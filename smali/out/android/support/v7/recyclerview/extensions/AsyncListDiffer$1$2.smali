.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

.field final synthetic val$result:Landroid/support/v7/util/DiffUtil$DiffResult;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .registers 3
    .param p1, "this$1"    # Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    .line 301
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 304
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v0, v1, :cond_19

    .line 305
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V

    .line 307
    :cond_19
    return-void
.end method
