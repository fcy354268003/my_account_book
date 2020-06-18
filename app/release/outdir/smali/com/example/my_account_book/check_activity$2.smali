.class Lcom/example/my_account_book/check_activity$2;
.super Ljava/lang/Object;
.source "check_activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/my_account_book/check_activity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/my_account_book/check_activity;


# direct methods
.method constructor <init>(Lcom/example/my_account_book/check_activity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/example/my_account_book/check_activity$2;->this$0:Lcom/example/my_account_book/check_activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/example/my_account_book/check_activity$2;->this$0:Lcom/example/my_account_book/check_activity;

    const-string p2, "\u53d6\u6d88\u6210\u529f"

    invoke-static {p1, p2}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
