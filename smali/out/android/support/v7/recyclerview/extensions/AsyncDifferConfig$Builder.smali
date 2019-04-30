.class public final Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .registers 2
    .param p1    # Landroid/support/v7/util/DiffUtil$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    .local p1, "diffCallback":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    .line 84
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1b

    .line 128
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_7
    sget-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_12

    .line 130
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 132
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    .line 133
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1b

    .line 132
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    .line 135
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    return-object v0
.end method

.method public setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 117
    return-object p0
.end method

.method public setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 101
    return-object p0
.end method
