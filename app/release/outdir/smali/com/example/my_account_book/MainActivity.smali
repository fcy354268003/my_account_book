.class public Lcom/example/my_account_book/MainActivity;
.super Lcom/example/my_account_book/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private bEdit:Landroid/widget/Button;

.field private bSave:Landroid/widget/Button;

.field private change:Landroid/widget/TextView;

.field private date:Ljava/util/Date;

.field private enabled:Z

.field private extra_cost11:Landroid/widget/EditText;

.field private extra_cost_description:Landroid/widget/EditText;

.field private format:Ljava/text/SimpleDateFormat;

.field private mBreakfast:Landroid/widget/EditText;

.field private mDinner:Landroid/widget/EditText;

.field private mDrink:Landroid/widget/EditText;

.field private mLaunch:Landroid/widget/EditText;

.field private mLeft:Landroid/widget/ImageView;

.field private mRight:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

.field private time:Ljava/lang/String;

.field private timeDifference:I

.field private today:Lcom/example/my_account_book/Date;

.field private total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/example/my_account_book/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/example/my_account_book/MainActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/example/my_account_book/MainActivity;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/my_account_book/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date = ?"

    aput-object v2, v0, v1

    .line 94
    iget-object v2, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, Lcom/example/my_account_book/Date;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/my_account_book/Date;

    iput-object v0, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Lcom/example/my_account_book/Date;

    invoke-direct {v0}, Lcom/example/my_account_book/Date;-><init>()V

    iput-object v0, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    .line 99
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    iget-object v1, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/example/my_account_book/Date;->setDate(Ljava/lang/String;)V

    const-string v0, "\u4eb2\uff0c\u60a8\u5728\u8be5\u65e5\u671f\u8fd8\u6ca1\u6709\u8fc7\u8bb0\u5f55"

    .line 100
    invoke-static {p0, v0}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->extra_cost11:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v2}, Lcom/example/my_account_book/Date;->getExtra_cost()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->mBreakfast:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v3}, Lcom/example/my_account_book/Date;->getBreakfast_cost()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->mLaunch:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v3}, Lcom/example/my_account_book/Date;->getLunch_cost()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->mDinner:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v3}, Lcom/example/my_account_book/Date;->getDinner_cost()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->total:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u603b\u5171\u82b1\u8d39\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v3}, Lcom/example/my_account_book/Date;->getTotal()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->mDrink:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v3}, Lcom/example/my_account_book/Date;->getDrink()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->extra_cost_description:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v1}, Lcom/example/my_account_book/Date;->getExtra_cost_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/example/my_account_book/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const-string p1, "bundle"

    .line 184
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "year"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "day"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/example/my_account_book/MainActivity;->init()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x5

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 131
    :sswitch_0
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mDrink:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mBreakfast:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mLaunch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 134
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mDinner:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 135
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->extra_cost11:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->extra_cost_description:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 138
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mBreakfast:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mBreakfast:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/example/my_account_book/MainActivity;->mLaunch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/example/my_account_book/MainActivity;->mLaunch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/example/my_account_book/MainActivity;->mDinner:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/example/my_account_book/MainActivity;->mDinner:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 144
    :goto_2
    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->mDrink:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    iget-object v3, p0, Lcom/example/my_account_book/MainActivity;->mDrink:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 146
    :goto_3
    iget-object v4, p0, Lcom/example/my_account_book/MainActivity;->extra_cost11:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 147
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->extra_cost11:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    add-int v4, p1, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    .line 149
    iget-object v5, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {v5, p1}, Lcom/example/my_account_book/Date;->setBreakfast_cost(I)V

    .line 150
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {p1, v1}, Lcom/example/my_account_book/Date;->setLunch_cost(I)V

    .line 151
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {p1, v0}, Lcom/example/my_account_book/Date;->setExtra_cost(I)V

    .line 152
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {p1, v4}, Lcom/example/my_account_book/Date;->setTotal(I)V

    .line 153
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {p1, v2}, Lcom/example/my_account_book/Date;->setDinner_cost(I)V

    .line 154
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {p1, v3}, Lcom/example/my_account_book/Date;->setDrink(I)V

    .line 155
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->extra_cost_description:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/my_account_book/Date;->setExtra_cost_description(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->today:Lcom/example/my_account_book/Date;

    invoke-virtual {p1}, Lcom/example/my_account_book/Date;->save()Z

    .line 157
    iget-boolean p1, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    const-string p1, "\u4fdd\u5b58\u6210\u529f"

    .line 158
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 169
    :sswitch_1
    iget p1, p0, Lcom/example/my_account_book/MainActivity;->timeDifference:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/example/my_account_book/MainActivity;->timeDifference:I

    .line 170
    iget p1, p0, Lcom/example/my_account_book/MainActivity;->timeDifference:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0}, Lcom/example/my_account_book/MainActivity;->init()V

    goto :goto_5

    .line 161
    :sswitch_2
    iget p1, p0, Lcom/example/my_account_book/MainActivity;->timeDifference:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/example/my_account_book/MainActivity;->timeDifference:I

    .line 162
    iget p1, p0, Lcom/example/my_account_book/MainActivity;->timeDifference:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0}, Lcom/example/my_account_book/MainActivity;->init()V

    goto :goto_5

    .line 117
    :sswitch_3
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mDrink:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 118
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mBreakfast:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 119
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mLaunch:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 120
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mDinner:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 121
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->extra_cost11:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 122
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->extra_cost_description:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 123
    iget-boolean p1, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    if-eqz p1, :cond_5

    const-string p1, "\u53d6\u6d88\u7f16\u8f91"

    .line 124
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p1, "\u5f00\u59cb\u7f16\u8f91"

    .line 126
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    :goto_4
    iget-boolean p1, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/example/my_account_book/MainActivity;->enabled:Z

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080060 -> :sswitch_3
        0x7f08007c -> :sswitch_2
        0x7f080097 -> :sswitch_1
        0x7f08009a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/example/my_account_book/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 49
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->setContentView(I)V

    const p1, 0x7f080095

    .line 50
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 51
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v0, Lcom/example/my_account_book/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/my_account_book/MainActivity$1;-><init>(Lcom/example/my_account_book/MainActivity;)V

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 59
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setEnableHorizontalDrag(Z)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const p1, 0x7f08007c

    .line 60
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mLeft:Landroid/widget/ImageView;

    .line 61
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080097

    .line 62
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mRight:Landroid/widget/ImageView;

    .line 63
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mRight:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080066

    .line 64
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->extra_cost11:Landroid/widget/EditText;

    const p1, 0x7f08004c

    .line 65
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->change:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->change:Landroid/widget/TextView;

    new-instance v0, Lcom/example/my_account_book/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/example/my_account_book/MainActivity$2;-><init>(Lcom/example/my_account_book/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080065

    .line 74
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->extra_cost_description:Landroid/widget/EditText;

    const p1, 0x7f08005f

    .line 75
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mDrink:Landroid/widget/EditText;

    const p1, 0x7f08009a

    .line 76
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->bSave:Landroid/widget/Button;

    const p1, 0x7f080060

    .line 77
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->bEdit:Landroid/widget/Button;

    const p1, 0x7f0800d2

    .line 78
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->total:Landroid/widget/TextView;

    const p1, 0x7f080047

    .line 79
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mBreakfast:Landroid/widget/EditText;

    const p1, 0x7f08007b

    .line 80
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mLaunch:Landroid/widget/EditText;

    const p1, 0x7f08005c

    .line 81
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mDinner:Landroid/widget/EditText;

    const p1, 0x7f0800cf

    .line 82
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->mTextView:Landroid/widget/TextView;

    .line 83
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-M-d"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->format:Ljava/text/SimpleDateFormat;

    .line 84
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->date:Ljava/util/Date;

    .line 85
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->format:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/example/my_account_book/MainActivity;->init()V

    .line 89
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->bSave:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity;->bEdit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
