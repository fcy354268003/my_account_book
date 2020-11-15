.class public Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;
.super Lcom/scwang/smartrefresh/header/fungame/FunGameView;
.source "FunGameBattleCityHeader.java"


# static fields
.field protected static final DEFAULT_BULLET_NUM_SPACING:I = 0x168

.field protected static final DEFAULT_ENEMY_TANK_NUM_SPACING:I = 0x3c

.field protected static final DEFAULT_TANK_MAGIC_TOTAL_NUM:I = 0x8

.field protected static final TANK_BARREL_RATIO:F = 0.33333334f

.field protected static TANK_ROW_NUM:I = 0x3


# instance fields
.field protected barrelSize:I

.field protected bulletRadius:F

.field protected bulletSpace:I

.field protected bulletSpeed:I

.field protected eTankSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field protected enemySpeed:I

.field protected enemyTankSpace:I

.field protected levelNum:I

.field protected mBulletList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected offsetETankX:I

.field protected offsetMBulletX:I

.field protected once:Z

.field protected overstepNum:I

.field protected random:Ljava/util/Random;

.field protected usedBullet:Landroid/graphics/Point;

.field protected wipeOutNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 90
    iput p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    const/4 p2, 0x4

    iput p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpeed:I

    .line 122
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->once:Z

    .line 132
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected appearanceOption()I
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->random:Ljava/util/Random;

    sget v1, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->TANK_ROW_NUM:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method protected checkTankCrash(IFF)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->eTankSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected checkWipeOutETank(Landroid/graphics/Point;)Z
    .locals 4

    .line 199
    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->getTrackIndex(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->eTankSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 201
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    iget p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->wipeOutNum:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->wipeOutNum:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->levelNum:I

    if-ne p1, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->upLevel()V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->eTankSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected drawBullet(Landroid/graphics/Canvas;Landroid/graphics/Point;)V
    .locals 3

    .line 313
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpeed:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 314
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletRadius:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawBulletPath(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mModelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetMBulletX:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetMBulletX:I

    .line 276
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetMBulletX:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpace:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 277
    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetMBulletX:I

    .line 280
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetMBulletX:I

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 282
    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    sub-int/2addr p2, v3

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 283
    iget p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 284
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mBulletList:Ljava/util/Queue;

    invoke-interface {p2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mBulletList:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 289
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->checkWipeOutETank(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    iput-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->usedBullet:Landroid/graphics/Point;

    goto :goto_0

    .line 293
    :cond_2
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletRadius:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    const/4 v1, 0x1

    .line 296
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawBullet(Landroid/graphics/Canvas;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 300
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mBulletList:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 303
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mBulletList:Ljava/util/Queue;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->usedBullet:Landroid/graphics/Point;

    invoke-interface {p1, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 304
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->usedBullet:Landroid/graphics/Point;

    return-void
.end method

.method protected drawEnemyTank(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 351
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->lModelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetETankX:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetETankX:I

    .line 353
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetETankX:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemyTankSpace:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->once:Z

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    iput v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetETankX:I

    .line 355
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->once:Z

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->appearanceOption()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 360
    :goto_0
    sget v5, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->TANK_ROW_NUM:I

    if-ge v3, v5, :cond_8

    .line 361
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->eTankSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Queue;

    .line 363
    iget v6, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->offsetETankX:I

    if-nez v6, :cond_2

    if-ne v3, v0, :cond_2

    .line 364
    invoke-virtual {p0, v3}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->generateEnemyTank(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 367
    :cond_2
    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 368
    iget v9, v7, Landroid/graphics/RectF;->left:F

    int-to-float v10, p2

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 370
    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->overstepNum:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->overstepNum:I

    const/16 v7, 0x8

    if-lt v4, v7, :cond_3

    .line 371
    iput v8, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {p0, p1, v7}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawTank(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 379
    :cond_5
    :goto_2
    iget v6, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    if-ne v6, v8, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 381
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected drawGame(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawSelfTank(Landroid/graphics/Canvas;I)V

    .line 256
    iget p3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    iget p3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    if-eq p3, v1, :cond_0

    iget p3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    if-ne p3, v0, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawEnemyTank(Landroid/graphics/Canvas;I)V

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawBulletPath(Landroid/graphics/Canvas;I)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 262
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float p3, p3

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {p2, p3, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawTank(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 263
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float p3, p3

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p2, v4, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawTank(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 264
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int/lit8 p3, p3, 0x3

    int-to-float p3, p3

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int/lit8 v3, v3, 0x4

    int-to-float v0, v3

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v1, v3

    invoke-direct {p2, p3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->drawTank(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method protected drawSelfTank(Landroid/graphics/Canvas;I)V
    .locals 7

    .line 323
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->rModelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->getTrackIndex(I)I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->checkTankCrash(IFF)Z

    move-result v0

    .line 327
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->getTrackIndex(I)I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->checkTankCrash(IFF)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 332
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    .line 335
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    sub-int v0, p2, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->DIVIDING_LINE_SIZE:F

    add-float v3, v0, v1

    int-to-float v4, p2

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->DIVIDING_LINE_SIZE:F

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 338
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    sub-int/2addr p2, v1

    int-to-float v4, p2

    iget p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    iget v5, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float v1, v1, v3

    add-float/2addr p2, v1

    int-to-float v1, v5

    add-float v5, p2, v1

    iget-object v6, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawTank(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 8

    .line 395
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 396
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 397
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float v4, v0, v1

    .line 398
    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    int-to-float v1, v0

    add-float v5, p2, v1

    int-to-float p2, v0

    add-float v6, v4, p2

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected generateEnemyTank(I)Landroid/graphics/RectF;
    .locals 4

    .line 175
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    add-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    .line 176
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    mul-int p1, p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->DIVIDING_LINE_SIZE:F

    add-float/2addr p1, v1

    .line 177
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-direct {v1, v0, p1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method protected getTrackIndex(I)I
    .locals 2

    .line 186
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mHeaderHeight:I

    sget v1, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->TANK_ROW_NUM:I

    div-int/2addr v0, v1

    div-int/2addr p1, v0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, v1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 4

    .line 137
    sget v0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->TANK_ROW_NUM:I

    div-int v0, p2, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    .line 138
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    .line 139
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    int-to-float v0, v0

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->DIVIDING_LINE_SIZE:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletRadius:F

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    return-void
.end method

.method protected resetConfigParams()V
    .locals 3

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->status:I

    .line 147
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->DIVIDING_LINE_SIZE:F

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerPosition:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    const/high16 v1, 0x40800000    # 4.0f

    .line 150
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpeed:I

    const/16 v1, 0x8

    .line 152
    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->levelNum:I

    .line 153
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->wipeOutNum:I

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->once:Z

    .line 157
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->controllerSize:I

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->barrelSize:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3c

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemyTankSpace:I

    const/16 v1, 0x168

    .line 158
    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpace:I

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->eTankSparseArray:Landroid/util/SparseArray;

    .line 161
    :goto_0
    sget v1, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->TANK_ROW_NUM:I

    if-ge v0, v1, :cond_0

    .line 162
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 163
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->eTankSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->mBulletList:Ljava/util/Queue;

    return-void
.end method

.method protected upLevel()V
    .locals 3

    .line 215
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->levelNum:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->levelNum:I

    .line 216
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemySpeed:I

    .line 217
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpeed:I

    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpeed:I

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->wipeOutNum:I

    .line 220
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemyTankSpace:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 221
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->enemyTankSpace:I

    .line 223
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpace:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 224
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->bulletSpace:I

    :cond_1
    return-void
.end method
