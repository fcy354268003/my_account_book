.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 1755
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1758
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez v0, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 1763
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v0, :cond_2

    .line 1765
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    :cond_2
    return-void
.end method
