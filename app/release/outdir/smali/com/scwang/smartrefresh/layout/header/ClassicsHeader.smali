.class public Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "ClassicsHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshHeader;"
    }
.end annotation


# static fields
.field public static final ID_TEXT_UPDATE:I

.field public static REFRESH_HEADER_FAILED:Ljava/lang/String;

.field public static REFRESH_HEADER_FINISH:Ljava/lang/String;

.field public static REFRESH_HEADER_LOADING:Ljava/lang/String;

.field public static REFRESH_HEADER_PULLING:Ljava/lang/String;

.field public static REFRESH_HEADER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_HEADER_RELEASE:Ljava/lang/String;

.field public static REFRESH_HEADER_SECONDARY:Ljava/lang/String;

.field public static REFRESH_HEADER_UPDATE:Ljava/lang/String;


# instance fields
.field protected KEY_LAST_UPDATE_TIME:Ljava/lang/String;

.field protected mEnableLastTime:Z

.field protected mLastTime:Ljava/util/Date;

.field protected mLastUpdateFormat:Ljava/text/DateFormat;

.field protected mLastUpdateText:Landroid/widget/TextView;

.field protected mShared:Landroid/content/SharedPreferences;

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;

.field protected mTextSecondary:Ljava/lang/String;

.field protected mTextUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget v0, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_update:I

    sput v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->ID_TEXT_UPDATE:I

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "LAST_UPDATE_TIME"

    .line 55
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    .line 80
    sget v1, Lcom/scwang/smartrefresh/layout/R$layout;->srl_classics_header:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    sget v1, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 84
    sget v2, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_update:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 85
    sget v3, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    .line 87
    sget v4, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    .line 89
    sget-object v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 95
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 96
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 98
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 99
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 100
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 101
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 103
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 104
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 105
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 108
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlFinishDuration:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mFinishDuration:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mFinishDuration:I

    .line 109
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    .line 110
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iget v6, v6, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 112
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const v5, -0x99999a

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 115
    new-instance v4, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;

    invoke-direct {v4}, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 116
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v4, v5}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 117
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_1
    :goto_0
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 123
    new-instance v4, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-direct {v4}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 124
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v4, v5}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 125
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_3
    :goto_1
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    :cond_4
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 133
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    :cond_5
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-super {p0, v4}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 139
    :cond_6
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 140
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 143
    :cond_7
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 144
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 145
    :cond_8
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 146
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 148
    :cond_9
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_pulling:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    .line 150
    :goto_2
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 151
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 152
    :cond_a
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 153
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 155
    :cond_b
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_loading:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    .line 157
    :goto_3
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 158
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 159
    :cond_c
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 160
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 162
    :cond_d
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_release:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    .line 164
    :goto_4
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 165
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 166
    :cond_e
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 167
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 169
    :cond_f
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_finish:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    .line 171
    :goto_5
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 172
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 173
    :cond_10
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 174
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 176
    :cond_11
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_failed:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    .line 178
    :goto_6
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 179
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_7

    .line 180
    :cond_12
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 181
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_7

    .line 183
    :cond_13
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_secondary:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    .line 185
    :goto_7
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 186
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_8

    .line 187
    :cond_14
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 188
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_8

    .line 190
    :cond_15
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    .line 192
    :goto_8
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 193
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_9

    .line 194
    :cond_16
    sget-object v4, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 195
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_9

    .line 197
    :cond_17
    sget v4, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_update:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    .line 199
    :goto_9
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 201
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 204
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    const/16 v4, 0x8

    if-eqz p2, :cond_18

    const/4 p2, 0x0

    goto :goto_a

    :cond_18
    const/16 p2, 0x8

    :goto_a
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_b

    :cond_19
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    :goto_b
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 208
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 210
    :cond_1a
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :goto_c
    :try_start_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_1b

    .line 215
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 218
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1b

    .line 220
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 226
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const-string p2, "ClassicsHeader"

    .line 230
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    .line 231
    new-instance p1, Ljava/util/Date;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 3

    .line 253
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 254
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 255
    sget-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 265
    :pswitch_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 257
    :pswitch_4
    iget-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :pswitch_5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-object p1
.end method

.method public bridge synthetic setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    move-result-object p1

    return-object p1
.end method

.method public setEnableLastTime(Z)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 317
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 318
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_1
    return-object p0
.end method

.method public setLastUpdateText(Ljava/lang/CharSequence;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 1

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 306
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 4

    .line 288
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 289
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public setTextSizeTime(F)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 327
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public setTextTimeMarginTop(F)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 344
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setTimeFormat(Ljava/text/DateFormat;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 2

    .line 297
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 298
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
