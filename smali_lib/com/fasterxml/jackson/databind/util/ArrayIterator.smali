.class public Lcom/fasterxml/jackson/databind/util/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final _a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private _index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ArrayIterator;, "Lcom/fasterxml/jackson/databind/util/ArrayIterator<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_a:[Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    .line 20
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 23
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ArrayIterator;, "Lcom/fasterxml/jackson/databind/util/ArrayIterator<TT;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ArrayIterator;, "Lcom/fasterxml/jackson/databind/util/ArrayIterator<TT;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ArrayIterator;, "Lcom/fasterxml/jackson/databind/util/ArrayIterator<TT;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 30
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;->_index:I

    aget-object v0, v1, v0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 33
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ArrayIterator;, "Lcom/fasterxml/jackson/databind/util/ArrayIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
