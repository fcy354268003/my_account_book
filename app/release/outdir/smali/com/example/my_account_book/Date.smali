.class public Lcom/example/my_account_book/Date;
.super Lorg/litepal/crud/LitePalSupport;
.source "Date.java"


# instance fields
.field private breakfast_cost:I

.field private date:Ljava/lang/String;

.field private dinner_cost:I

.field private drink:I

.field private extra_cost:I

.field private extra_cost_description:Ljava/lang/String;

.field private lunch_cost:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 43
    check-cast p1, Lcom/example/my_account_book/Date;

    .line 44
    iget-object v0, p0, Lcom/example/my_account_book/Date;->date:Ljava/lang/String;

    iget-object p1, p1, Lcom/example/my_account_book/Date;->date:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBreakfast_cost()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/example/my_account_book/Date;->breakfast_cost:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/example/my_account_book/Date;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDinner_cost()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/example/my_account_book/Date;->dinner_cost:I

    return v0
.end method

.method public getDrink()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/example/my_account_book/Date;->drink:I

    return v0
.end method

.method public getExtra_cost()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/example/my_account_book/Date;->extra_cost:I

    return v0
.end method

.method public getExtra_cost_description()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/example/my_account_book/Date;->extra_cost_description:Ljava/lang/String;

    return-object v0
.end method

.method public getLunch_cost()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/example/my_account_book/Date;->lunch_cost:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/example/my_account_book/Date;->total:I

    return v0
.end method

.method public setBreakfast_cost(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/example/my_account_book/Date;->breakfast_cost:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/example/my_account_book/Date;->date:Ljava/lang/String;

    return-void
.end method

.method public setDinner_cost(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/example/my_account_book/Date;->dinner_cost:I

    return-void
.end method

.method public setDrink(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/example/my_account_book/Date;->drink:I

    return-void
.end method

.method public setExtra_cost(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/example/my_account_book/Date;->extra_cost:I

    return-void
.end method

.method public setExtra_cost_description(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/example/my_account_book/Date;->extra_cost_description:Ljava/lang/String;

    return-void
.end method

.method public setLunch_cost(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/example/my_account_book/Date;->lunch_cost:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/example/my_account_book/Date;->total:I

    return-void
.end method
