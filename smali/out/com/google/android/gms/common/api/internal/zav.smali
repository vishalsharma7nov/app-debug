.class final Lcom/google/android/gms/common/api/internal/zav;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field private final synthetic zaep:Lcom/google/android/gms/common/api/internal/zas;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zas;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/api/internal/zat;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zav;-><init>(Lcom/google/android/gms/common/api/internal/zas;)V

    return-void
.end method


# virtual methods
.method public final zab(IZ)V
    .registers 5

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zac(Lcom/google/android/gms/common/api/internal/zas;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;Z)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;IZ)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3f

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    return-void

    .line 20
    :cond_26
    :try_start_26
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;Z)Z

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zas;->zaf(Lcom/google/android/gms/common/api/internal/zas;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabe;->onConnectionSuspended(I)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3f

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    return-void

    .line 24
    :catchall_3f
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zab(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/api/internal/zas;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    return-void

    .line 7
    :catchall_1f
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/api/internal/zas;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    return-void

    .line 13
    :catchall_1d
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaep:Lcom/google/android/gms/common/api/internal/zas;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
