.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lokhttp3/OkHttpClient;

.field private eventListener:Lokhttp3/EventListener;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp3/Request;

.field final retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .registers 5
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;
    .param p3, "forWebSocket"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 52
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 53
    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    .line 54
    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;Z)V

    iput-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;
    .registers 2
    .param p0, "x0"    # Lokhttp3/RealCall;

    .line 33
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    return-object v0
.end method

.method private captureCallStackTrace()V
    .registers 3

    .line 89
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "callStackTrace":Ljava/lang/Object;
    iget-object v1, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method static newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    .registers 5
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "originalRequest"    # Lokhttp3/Request;
    .param p2, "forWebSocket"    # Z

    .line 59
    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    .line 60
    .local v0, "call":Lokhttp3/RealCall;
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 61
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 104
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    .line 105
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .registers 4

    .line 117
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 4
    .param p1, "responseCallback"    # Lokhttp3/Callback;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_20

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 97
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    .line 98
    invoke-direct {p0}, Lokhttp3/RealCall;->captureCallStackTrace()V

    .line 99
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {v0, p0}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 100
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    .line 101
    return-void

    .line 95
    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "responseCallback":Lokhttp3/Callback;
    throw v0

    .line 97
    .restart local p1    # "responseCallback":Lokhttp3/Callback;
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public execute()Lokhttp3/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_46

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 72
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4e

    .line 73
    invoke-direct {p0}, Lokhttp3/RealCall;->captureCallStackTrace()V

    .line 74
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {v0, p0}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 76
    :try_start_11
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 77
    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_35
    .catchall {:try_start_11 .. :try_end_1e} :catchall_33

    .line 78
    .local v0, "result":Lokhttp3/Response;
    if-eqz v0, :cond_2b

    .line 79
    nop

    .line 84
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    .line 79
    return-object v0

    .line 78
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_35
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 84
    .end local v0    # "result":Lokhttp3/Response;
    :catchall_33
    move-exception v0

    goto :goto_3c

    .line 80
    :catch_35
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    :try_start_36
    iget-object v1, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    invoke-virtual {v1, p0, v0}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 82
    throw v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3c
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    throw v0

    .line 70
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method getResponseWithInterceptorChain()Lokhttp3/Response;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Interceptor;>;"
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v1, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-boolean v1, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v1, :cond_46

    .line 192
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_46
    new-instance v1, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v1, v2}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v13, Lokhttp3/internal/http/RealInterceptorChain;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-object v9, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 197
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v10

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 198
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v11

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v12

    move-object v1, v13

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v1 .. v12}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;ILokhttp3/Request;Lokhttp3/Call;Lokhttp3/EventListener;III)V

    .line 200
    .local v1, "chain":Lokhttp3/Interceptor$Chain;
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method

.method public isCanceled()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    monitor-enter p0

    .line 108
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lokhttp3/RealCall;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .line 65
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    .line 121
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .registers 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1a

    .line 175
    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0
.end method
