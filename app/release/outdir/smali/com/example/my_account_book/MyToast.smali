.class public Lcom/example/my_account_book/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/example/my_account_book/MyToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/example/my_account_book/MyToast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    sget-object p0, Lcom/example/my_account_book/MyToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
