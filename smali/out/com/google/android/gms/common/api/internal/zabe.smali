.class public final Lcom/google/android/gms/common/api/internal/zabe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabs;
.implements Lcom/google/android/gms/common/api/internal/zar;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zacd:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field final zaed:Lcom/google/android/gms/common/api/internal/zaaw;

.field private final zaen:Ljava/util/concurrent/locks/Lock;

.field private final zaes:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zaev:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zaex:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field final zagy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final zahm:Ljava/util/concurrent/locks/Condition;

.field private final zahn:Lcom/google/android/gms/common/api/internal/zabg;

.field final zaho:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zahp:Lcom/google/android/gms/common/api/internal/zabd;

.field private zahq:Lcom/google/android/gms/common/ConnectionResult;

.field zahr:I

.field final zahs:Lcom/google/android/gms/common/api/internal/zabt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaaw;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/zabt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaho:Ljava/util/Map;

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahq:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaex:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zabe;->zagy:Ljava/util/Map;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaes:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaev:Ljava/util/Map;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/zabe;->zacd:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahs:Lcom/google/android/gms/common/api/internal/zabt;

    .line 13
    check-cast p10, Ljava/util/ArrayList;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_26
    if-ge p2, p1, :cond_34

    invoke-virtual {p10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    check-cast p5, Lcom/google/android/gms/common/api/internal/zaq;

    .line 14
    invoke-virtual {p5, p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zar;)V

    .line 15
    goto :goto_26

    .line 16
    :cond_34
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabg;

    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/common/api/internal/zabg;-><init>(Lcom/google/android/gms/common/api/internal/zabe;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahn:Lcom/google/android/gms/common/api/internal/zabg;

    .line 17
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahm:Ljava/util/concurrent/locks/Condition;

    .line 18
    new-instance p1, Lcom/google/android/gms/common/api/internal/zaav;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zabe;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    .line 19
    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zabe;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zabe;)Lcom/google/android/gms/common/api/internal/zabd;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    return-object p0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->connect()V

    .line 27
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnecting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 28
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahm:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    .line 29
    goto :goto_3

    .line 30
    :catch_10
    move-exception v0

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 32
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0

    .line 33
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 34
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0

    .line 35
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2e

    .line 36
    return-object v0

    .line 37
    :cond_2e
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->connect()V

    .line 39
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 40
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnecting()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_36

    .line 41
    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_1f

    .line 42
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->disconnect()V

    .line 43
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 44
    :cond_1f
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahm:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_26

    .line 45
    goto :goto_7

    .line 46
    :catch_26
    move-exception p1

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 48
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 49
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 50
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    .line 51
    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_44

    .line 52
    return-object p1

    .line 53
    :cond_44
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public final connect()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->connect()V

    .line 25
    return-void
.end method

.method public final disconnect()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->disconnect()Z

    move-result v0

    .line 55
    if-eqz v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaho:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    :cond_d
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaev:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 119
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabe;->zagy:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 121
    invoke-interface {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$Client;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 122
    goto :goto_23

    .line 123
    :cond_50
    return-void
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zau()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zau()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zagy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zagy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 61
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    .line 62
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaho:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaho:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    .line 64
    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isConnected()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaah;

    return v0
.end method

.method public final isConnecting()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaak;

    return v0
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 2

    .line 90
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeSignOut()V
    .registers 1

    .line 91
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnected(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 102
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    return-void

    .line 104
    :catchall_10
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    return-void

    .line 109
    :catchall_10
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zabd;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 97
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    return-void

    .line 99
    :catchall_10
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method final zaa(Lcom/google/android/gms/common/api/internal/zabf;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahn:Lcom/google/android/gms/common/api/internal/zabg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahn:Lcom/google/android/gms/common/api/internal/zabg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabg;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method final zaaz()V
    .registers 10

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaak;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaes:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaev:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaex:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabe;->zacd:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zabe;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/api/internal/zaak;-><init>(Lcom/google/android/gms/common/api/internal/zabe;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->begin()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahm:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    return-void

    .line 71
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zab(Ljava/lang/RuntimeException;)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahn:Lcom/google/android/gms/common/api/internal/zabg;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahn:Lcom/google/android/gms/common/api/internal/zabg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabg;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method final zaba()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 73
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaaw()Z

    .line 74
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zaah;-><init>(Lcom/google/android/gms/common/api/internal/zabe;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->begin()V

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahm:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 78
    return-void

    .line 79
    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zaf(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 81
    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahq:Lcom/google/android/gms/common/ConnectionResult;

    .line 82
    new-instance p1, Lcom/google/android/gms/common/api/internal/zaav;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zabe;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabd;->begin()V

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahm:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    return-void

    .line 87
    :catchall_1e
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaen:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zaw()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->zahp:Lcom/google/android/gms/common/api/internal/zabd;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaah;->zaam()V

    .line 94
    :cond_d
    return-void
.end method
