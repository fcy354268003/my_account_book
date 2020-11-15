.class public Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;
.super Ljava/lang/Object;
.source "StoreHouseHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AniController"
.end annotation


# instance fields
.field mCountPerSeg:I

.field mInterval:I

.field mRunning:Z

.field mSegCount:I

.field mTick:I

.field final synthetic this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;


# direct methods
.method protected constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 336
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    .line 337
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    .line 338
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mSegCount:I

    .line 339
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 355
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 356
    :goto_0
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mSegCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 358
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    mul-int v3, v3, v2

    add-int/2addr v3, v0

    .line 359
    iget v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    if-le v3, v5, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    .line 364
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    .line 366
    invoke-virtual {v3, v1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setFillAfter(Z)V

    .line 367
    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setFillEnabled(Z)V

    .line 368
    invoke-virtual {v3, v1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setFillBefore(Z)V

    const-wide/16 v4, 0x190

    .line 369
    invoke-virtual {v3, v4, v5}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setDuration(J)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 370
    invoke-virtual {v3, v4, v5}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->start(FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    .line 374
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 376
    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected start()V
    .locals 3

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    const/4 v1, 0x0

    .line 344
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    .line 346
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniDuration:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v2, v2, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    .line 347
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    .line 348
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mSegCount:I

    .line 349
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->run()V

    return-void
.end method

.method protected stop()V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    .line 382
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 383
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
