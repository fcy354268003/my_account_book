.class Lcom/example/my_account_book/check_activity$1;
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

.field final synthetic val$uri:Ljava/lang/String;

.field final synthetic val$user:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/example/my_account_book/check_activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/example/my_account_book/check_activity$1;->this$0:Lcom/example/my_account_book/check_activity;

    iput-object p2, p0, Lcom/example/my_account_book/check_activity$1;->val$user:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/example/my_account_book/check_activity$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/example/my_account_book/check_activity$1;->val$user:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "isFirst"

    const/4 v0, 0x0

    .line 158
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object p2, p0, Lcom/example/my_account_book/check_activity$1;->val$uri:Ljava/lang/String;

    const-string v0, "uri"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    iget-object p1, p0, Lcom/example/my_account_book/check_activity$1;->this$0:Lcom/example/my_account_book/check_activity;

    invoke-static {p1}, Lcom/example/my_account_book/check_activity;->access$000(Lcom/example/my_account_book/check_activity;)V

    return-void
.end method
