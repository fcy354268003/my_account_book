.class Lcom/example/my_account_book/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 66
    iput-object p1, p0, Lcom/example/my_account_book/MainActivity$2;->this$0:Lcom/example/my_account_book/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/my_account_book/MainActivity$2;->this$0:Lcom/example/my_account_book/MainActivity;

    const-class v1, Lcom/example/my_account_book/date_select;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity$2;->this$0:Lcom/example/my_account_book/MainActivity;

    invoke-static {v0}, Lcom/example/my_account_book/MainActivity;->access$100(Lcom/example/my_account_book/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/example/my_account_book/MainActivity$2;->this$0:Lcom/example/my_account_book/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/example/my_account_book/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
