.class public Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "ClassicsFooter.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshFooter;"
    }
.end annotation


# static fields
.field public static REFRESH_FOOTER_FAILED:Ljava/lang/String;

.field public static REFRESH_FOOTER_FINISH:Ljava/lang/String;

.field public static REFRESH_FOOTER_LOADING:Ljava/lang/String;

.field public static REFRESH_FOOTER_NOTHING:Ljava/lang/String;

.field public static REFRESH_FOOTER_PULLING:Ljava/lang/String;

.field public static REFRESH_FOOTER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_FOOTER_RELEASE:Ljava/lang/String;


# instance fields
.field protected mNoMoreData:Z

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextNothing:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    .line 54
    sget v1, Lcom/scwang/smartrefresh/layout/R$layout;->srl_classics_footer:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    sget v1, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    .line 58
    sget v2, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    .line 60
    sget v3, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_title:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    .line 62
    sget-object v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 67
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 69
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrowSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 70
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrowSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 71
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgressSize:I

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 72
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgressSize:I

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 74
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 75
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 76
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 77
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 79
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlFinishDuration:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mFinishDuration:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mFinishDuration:I

    .line 80
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 82
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const v4, -0x99999a

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 85
    new-instance v3, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;

    invoke-direct {v3}, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;-><init>()V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 86
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 87
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_1
    :goto_0
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 93
    new-instance v3, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-direct {v3}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;-><init>()V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 94
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 95
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_3
    :goto_1
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextSizeTitle:I

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    :cond_4
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-super {p0, v3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 105
    :cond_5
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 106
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 109
    :cond_6
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 111
    :cond_7
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_PULLING:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 112
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 114
    :cond_8
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_pulling:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    .line 116
    :goto_2
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    goto :goto_3

    .line 118
    :cond_9
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 119
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    goto :goto_3

    .line 121
    :cond_a
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_release:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    .line 123
    :goto_3
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    goto :goto_4

    .line 125
    :cond_b
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_LOADING:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 126
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    goto :goto_4

    .line 128
    :cond_c
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    .line 130
    :goto_4
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 131
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    goto :goto_5

    .line 132
    :cond_d
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_REFRESHING:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 133
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    goto :goto_5

    .line 135
    :cond_e
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_refreshing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    .line 137
    :goto_5
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 138
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    goto :goto_6

    .line 139
    :cond_f
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_FINISH:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 140
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    goto :goto_6

    .line 142
    :cond_10
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_finish:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    .line 144
    :goto_6
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 145
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    goto :goto_7

    .line 146
    :cond_11
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_FAILED:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 147
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    goto :goto_7

    .line 149
    :cond_12
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    .line 151
    :goto_7
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    goto :goto_8

    .line 153
    :cond_13
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_NOTHING:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 154
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    goto :goto_8

    .line 156
    :cond_14
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_nothing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    .line 159
    :goto_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 162
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    goto :goto_9

    :cond_15
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_16

    .line 165
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 167
    :cond_16
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    .line 189
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mFinishDuration:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    .line 228
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-nez p2, :cond_0

    .line 229
    sget-object p2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/16 p3, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x0

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :pswitch_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNoMoreData(Z)Z
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-eq v0, p1, :cond_1

    .line 212
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    .line 213
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 216
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 219
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
