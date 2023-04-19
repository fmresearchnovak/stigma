.class public abstract Landroidx/recyclerview/widget/ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "config":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 106
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 107
    return-void
.end method

.method protected constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "diffCallback":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 100
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 101
    invoke-virtual {v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 102
    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 124
    .local p0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 129
    .local p0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroidx/recyclerview/widget/ListAdapter;, "Landroidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 120
    return-void
.end method
