.class final Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 670
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 688
    const/4 v0, 0x1

    iput v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 691
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v1, :cond_1f

    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1f

    .line 692
    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 693
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 694
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 697
    :cond_1f
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 698
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 699
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 702
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v1, :cond_3f

    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_3f

    .line 703
    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 704
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 705
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 721
    :cond_3f
    const/4 v1, 0x4

    .local v1, "scale":I
    :goto_40
    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_86

    .line 722
    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v2, :cond_67

    .line 724
    iget-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 725
    .local v2, "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 726
    .local v3, "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 727
    .local v4, "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v5, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 728
    iput-object v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 730
    iput-object v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    iput-object v2, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 732
    iget v5, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/2addr v5, v0

    iput v5, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 733
    iput-object v3, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 734
    iput-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 735
    .end local v2    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v3    # "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    goto :goto_83

    :cond_67
    const/4 v3, 0x0

    if-ne v2, v0, :cond_7c

    .line 737
    iget-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 738
    .restart local v2    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 739
    .local v4, "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 741
    iput-object v2, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 742
    iget v5, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 743
    iput-object v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 744
    iput v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .end local v2    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    goto :goto_82

    .line 745
    :cond_7c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_82

    .line 746
    iput v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_83

    .line 745
    :cond_82
    :goto_82
    nop

    .line 721
    :goto_83
    mul-int/lit8 v1, v1, 0x2

    goto :goto_40

    .line 749
    .end local v1    # "scale":I
    :cond_86
    return-void
.end method

.method reset(I)V
    .registers 4
    .param p1, "targetSize"    # I

    .line 679
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 680
    .local v0, "treeCapacity":I
    sub-int v1, v0, p1

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 681
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 682
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 683
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 684
    return-void
.end method

.method root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 752
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 753
    .local v0, "stackTop":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_7

    .line 756
    return-object v0

    .line 754
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
