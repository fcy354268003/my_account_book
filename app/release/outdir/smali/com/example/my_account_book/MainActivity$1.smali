.class Lcom/example/my_account_book/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/my_account_book/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/my_account_book/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/my_account_book/MainActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/example/my_account_book/MainActivity$1;->this$0:Lcom/example/my_account_book/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity$1;->this$0:Lcom/example/my_account_book/MainActivity;

    invoke-static {v0}, Lcom/example/my_account_book/MainActivity;->access$000(Lcom/example/my_account_book/MainActivity;)V

    const/16 v0, 0x3e8

    .line 55
    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 56
    iget-object p1, p0, Lcom/example/my_account_book/MainActivity$1;->this$0:Lcom/example/my_account_book/MainActivity;

    const-string v0, "\u5237\u65b0\u6210\u529f"

    invoke-static {p1, v0}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
