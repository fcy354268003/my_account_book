.class public Lcom/scwang/smartrefresh/header/DropBoxHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "DropBoxHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;
    }
.end annotation


# static fields
.field protected static drawable1Colors:[I

.field protected static drawable1Paths:[Ljava/lang/String;

.field protected static drawable2Colors:[I

.field protected static drawable2Paths:[Ljava/lang/String;

.field protected static drawable3Colors:[I

.field protected static drawable3Paths:[Ljava/lang/String;


# instance fields
.field protected mAccentColor:I

.field protected mBackgroundColor:I

.field protected mBoxBody:Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;

.field protected mDrawable1:Landroid/graphics/drawable/Drawable;

.field protected mDrawable2:Landroid/graphics/drawable/Drawable;

.field protected mDrawable3:Landroid/graphics/drawable/Drawable;

.field protected mDropOutAnimator:Landroid/animation/ValueAnimator;

.field protected mDropOutOverFlow:Z

.field protected mDropOutPercent:F

.field protected mHeaderHeight:I

.field protected mHeight:I

.field protected mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mReboundAnimator:Landroid/animation/ValueAnimator;

.field protected mReboundPercent:F

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "M3 2h18v20h-18z"

    const-string v1, "m4,1c-1.105,0 -2,0.895 -2,2v3,11 3,1c0,1.105 0.895,2 2,2h2,12 2c1.105,0 2,-0.895 2,-2v-1,-3 -11,-3c0,-1.105 -0.895,-2 -2,-2h-2,-12 -2zM3.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5z"

    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable1Paths:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 42
    fill-array-data v1, :array_0

    sput-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable1Colors:[I

    const-string v2, "M49,16.5l-14,-14l-27,0l0,53l41,0z"

    const-string v3, "m16,23.5h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,21.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z"

    const-string v4, "m16,15.5h10c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,13.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z"

    const-string v5, "M41,29.5L16,29.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z"

    const-string v6, "M41,37.5L16,37.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z"

    const-string v7, "M41,45.5L16,45.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z"

    const-string v8, "M49,16.5l-14,-14l0,14z"

    .line 46
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable2Paths:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_1

    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable2Colors:[I

    const-string v0, "M6.021,2.188L6.021,11.362C5.46,11.327 4.843,11.414 4.229,11.663C2.624,12.312 1.696,13.729 2.155,14.825C2.62,15.924 4.294,16.284 5.898,15.634C7.131,15.134 7.856,14.184 7.965,13.272L7.958,4.387L15.02,3.028L15.02,9.406C14.422,9.343 13.746,9.432 13.076,9.703C11.471,10.353 10.544,11.77 11.004,12.866C11.467,13.964 13.141,14.325 14.746,13.675C15.979,13.174 16.836,12.224 16.947,11.313L16.958,0.002L6.021,2.188L6.021,2.188Z"

    .line 59
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable3Paths:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x67289f

    aput v2, v0, v1

    .line 62
    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable3Colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x130f0f
        -0x3bef8
    .end array-data

    :array_1
    .array-data 4
        -0x12b97
        -0x2a51a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    .line 96
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;

    invoke-direct {v1}, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mBoxBody:Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;

    .line 98
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0x915601

    .line 99
    iput v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mAccentColor:I

    const v1, -0xd7c9bb

    .line 100
    iput v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mBackgroundColor:I

    const/high16 v1, 0x43160000    # 150.0f

    .line 102
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 104
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 106
    sget-object v1, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 107
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    .line 108
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable1:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 110
    :cond_0
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;-><init>()V

    .line 111
    sget-object v3, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable1Colors:[I

    invoke-virtual {p2, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->parserColors([I)V

    .line 112
    sget-object v3, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable1Paths:[Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->parserPaths([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x14

    const/16 v4, 0x16

    .line 113
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->declareOriginal(IIII)V

    .line 116
    :cond_1
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable1:Landroid/graphics/drawable/Drawable;

    .line 118
    :goto_0
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 119
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable2:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 121
    :cond_2
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;-><init>()V

    .line 122
    sget-object v2, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable2Colors:[I

    invoke-virtual {p2, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->parserColors([I)V

    .line 123
    sget-object v2, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable2Paths:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->parserPaths([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x29

    const/16 v5, 0x35

    .line 124
    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->declareOriginal(IIII)V

    .line 127
    :cond_3
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable2:Landroid/graphics/drawable/Drawable;

    .line 129
    :goto_1
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable3:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 130
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable3:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable3:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 132
    :cond_4
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;-><init>()V

    .line 133
    sget-object v2, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable3Colors:[I

    invoke-virtual {p2, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->parserColors([I)V

    .line 134
    sget-object v2, Lcom/scwang/smartrefresh/header/DropBoxHeader;->drawable3Paths:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->parserPaths([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0xf

    const/16 v3, 0x10

    .line 135
    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsDrawable;->declareOriginal(IIII)V

    .line 138
    :cond_5
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable3:Landroid/graphics/drawable/Drawable;

    .line 140
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 221
    iget v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mHeight:I

    .line 222
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->generateSideLength()I

    move-result v2

    .line 224
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v3

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 231
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->generateBoxBody(III)Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mAccentColor:I

    const/16 v6, 0x96

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->generateBoxBodyPath(Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mAccentColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->generateBoxCoverPath(Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x40200000    # 2.5f

    .line 240
    iput v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutPercent:F

    .line 242
    :cond_2
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutPercent:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 243
    invoke-virtual {p0, v1, v0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->generateClipPath(Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;I)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 245
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutPercent:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 246
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 247
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    iget v8, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v2, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 248
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutPercent:F

    sub-float/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 251
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 252
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v0, v8

    iget v9, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v2, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 253
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutPercent:F

    const/high16 v8, 0x40000000    # 2.0f

    sub-float/2addr v2, v8

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 256
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v8, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v2, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 258
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutOverFlow:Z

    if-eqz v2, :cond_3

    .line 261
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v5, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 262
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v5, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 265
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v1, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 268
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 276
    :cond_4
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateBoxBody(III)Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;
    .locals 2

    .line 300
    div-int/lit8 v0, p3, 0x2

    .line 301
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mBoxBody:Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->measure(IIII)Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;

    move-result-object p1

    return-object p1
.end method

.method protected generateBoxBodyPath(Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;)Landroid/graphics/Path;
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 362
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 363
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 364
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 365
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxSideLength:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundPercent:F

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    int-to-float v2, v2

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v4, v4

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 366
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxSideLength:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundPercent:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    int-to-float v2, v2

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v3, v3

    iget p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterBottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 370
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 371
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method protected generateBoxCoverPath(Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;)Landroid/graphics/Path;
    .locals 12

    .line 306
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 307
    iget v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    .line 309
    iget v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundPercent:F

    float-to-double v1, v1

    const-wide v3, 0x3ff41b2f769cf0e0L    # 1.2566370614359172

    mul-double v1, v1, v3

    int-to-float v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v3, v1, v3

    const-wide v5, 0x3ff0c152382d7365L    # 1.0471975511965976

    sub-double v3, v5, v3

    .line 314
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v0

    .line 315
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v0

    .line 316
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v10, v10

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 317
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v10, v10

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 318
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    int-to-float v11, v11

    sub-float/2addr v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 319
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 320
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    add-double/2addr v1, v5

    .line 325
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v0

    .line 326
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v0

    .line 327
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v8, v8

    iget v9, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 328
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v8, v8

    iget v9, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 329
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    iget v9, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 330
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v0

    .line 337
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v0

    .line 338
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v6, v6

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 339
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v6, v6

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 347
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v0

    .line 348
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 349
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v2, v2

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 350
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v2, v2

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 351
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 352
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 353
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 355
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method protected generateClipPath(Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;I)Landroid/graphics/Path;
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 288
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    int-to-float v1, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 290
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-float v1, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    int-to-float v1, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    int-to-float p2, p2

    iget p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    int-to-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 295
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method protected generateSideLength()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mHeaderHeight:I

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 145
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onAttachedToWindow()V

    .line 146
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 147
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    .line 148
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/scwang/smartrefresh/header/DropBoxHeader$1;

    invoke-direct {v4, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$1;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/scwang/smartrefresh/header/DropBoxHeader$2;

    invoke-direct {v4, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$2;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 171
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    .line 172
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$3;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$3;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$4;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$4;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onDetachedFromWindow()V

    .line 204
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 206
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 207
    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundAnimator:Landroid/animation/ValueAnimator;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 211
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 212
    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0

    const/4 p1, 0x0

    .line 430
    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutPercent:F

    const/4 p1, 0x0

    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 379
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mHeaderHeight:I

    .line 380
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mBackgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 381
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->generateSideLength()I

    move-result p1

    .line 382
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable1:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDrawable3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 389
    iput p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mHeight:I

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, p2, :cond_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    sub-int/2addr p3, p4

    .line 391
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float p1, p5

    div-float/2addr p2, p1

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mReboundPercent:F

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->invalidate()V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0

    .line 423
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0

    .line 398
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 399
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    .line 400
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mDropOutOverFlow:Z

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 411
    aget v0, p1, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mBackgroundColor:I

    .line 412
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    .line 413
    iget v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mBackgroundColor:I

    invoke-interface {v0, p0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 415
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 416
    aget p1, p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->mAccentColor:I

    :cond_1
    return-void
.end method
