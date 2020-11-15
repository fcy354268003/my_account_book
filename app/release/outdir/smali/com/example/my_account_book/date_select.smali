.class public Lcom/example/my_account_book/date_select;
.super Lcom/example/my_account_book/BaseActivity;
.source "DateSelectActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateSelectActivity"


# instance fields
.field private day:Landroid/widget/Spinner;

.field private days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirm:Landroid/widget/Button;

.field private month:Landroid/widget/Spinner;

.field private months:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private year:Landroid/widget/Spinner;

.field private years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/example/my_account_book/BaseActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->years:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->months:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->days:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->time:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/example/my_account_book/date_select;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/example/my_account_book/date_select;->time:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 30
    invoke-super {p0, p1}, Lcom/example/my_account_book/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 31
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/date_select;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/example/my_account_book/date_select;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0800db

    .line 34
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/date_select;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->year:Landroid/widget/Spinner;

    const v0, 0x7f080083

    .line 35
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/date_select;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->month:Landroid/widget/Spinner;

    const v0, 0x7f080057

    .line 36
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/date_select;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->day:Landroid/widget/Spinner;

    const v0, 0x7f080052

    .line 37
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/date_select;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/my_account_book/date_select;->mConfirm:Landroid/widget/Button;

    const/16 v0, 0x7e4

    const/16 v1, 0x7e4

    :goto_0
    const/16 v2, 0x7e8

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->years:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/example/my_account_book/date_select;->months:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_2
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    .line 45
    iget-object v3, p0, Lcom/example/my_account_book/date_select;->days:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u65e5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->mConfirm:Landroid/widget/Button;

    new-instance v3, Lcom/example/my_account_book/date_select$1;

    invoke-direct {v3, p0}, Lcom/example/my_account_book/date_select$1;-><init>(Lcom/example/my_account_book/date_select;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->time:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->time:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->time:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->year:Landroid/widget/Spinner;

    new-instance v4, Lcom/example/my_account_book/MyAdapter;

    iget-object v5, p0, Lcom/example/my_account_book/date_select;->years:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/example/my_account_book/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->month:Landroid/widget/Spinner;

    new-instance v4, Lcom/example/my_account_book/MyAdapter;

    iget-object v5, p0, Lcom/example/my_account_book/date_select;->months:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/example/my_account_book/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->day:Landroid/widget/Spinner;

    new-instance v4, Lcom/example/my_account_book/MyAdapter;

    iget-object v5, p0, Lcom/example/my_account_book/date_select;->days:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/example/my_account_book/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->year:Landroid/widget/Spinner;

    new-instance v4, Lcom/example/my_account_book/date_select$2;

    invoke-direct {v4, p0}, Lcom/example/my_account_book/date_select$2;-><init>(Lcom/example/my_account_book/date_select;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 77
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->month:Landroid/widget/Spinner;

    new-instance v4, Lcom/example/my_account_book/date_select$3;

    invoke-direct {v4, p0}, Lcom/example/my_account_book/date_select$3;-><init>(Lcom/example/my_account_book/date_select;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 87
    iget-object v2, p0, Lcom/example/my_account_book/date_select;->day:Landroid/widget/Spinner;

    new-instance v4, Lcom/example/my_account_book/date_select$4;

    invoke-direct {v4, p0}, Lcom/example/my_account_book/date_select$4;-><init>(Lcom/example/my_account_book/date_select;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    array-length v4, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_4
    const/4 v4, 0x3

    if-ge p1, v4, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    goto :goto_5

    .line 111
    :cond_4
    iget-object v5, p0, Lcom/example/my_account_book/date_select;->day:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 108
    :cond_5
    iget-object v4, p0, Lcom/example/my_account_book/date_select;->month:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 105
    :cond_6
    iget-object v4, p0, Lcom/example/my_account_book/date_select;->year:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method
