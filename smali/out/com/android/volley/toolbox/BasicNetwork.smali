.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static final DEFAULT_POOL_SIZE:I = 0x1000

.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# instance fields
.field private final mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;)V
    .registers 4
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/BaseHttpStack;

    .line 96
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 3
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/BaseHttpStack;
    .param p2, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 108
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 109
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .registers 4
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 4
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;
    .param p2, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 88
    new-instance v0, Lcom/android/volley/toolbox/AdaptedHttpStack;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/AdaptedHttpStack;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 89
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 90
    return-void
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 9
    .param p0, "logPrefix"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 241
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 242
    .local v0, "retryPolicy":Lcom/android/volley/RetryPolicy;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 245
    .local v1, "oldTimeout":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_b
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_e
    .catch Lcom/android/volley/VolleyError; {:try_start_b .. :try_end_e} :catch_23

    .line 250
    nop

    .line 251
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "%s-retry [timeout=%s]"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 252
    return-void

    .line 246
    :catch_23
    move-exception v5

    .line 247
    .local v5, "e":Lcom/android/volley/VolleyError;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 249
    throw v5
.end method

.method private static combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .registers 9
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 339
    .local p0, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 340
    .local v0, "headerNamesFromNetworkResponse":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 342
    .local v2, "header":Lcom/android/volley/Header;
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v2    # "header":Lcom/android/volley/Header;
    goto :goto_11

    .line 348
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v1, "combinedHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz v2, :cond_57

    .line 350
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    .line 351
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/Header;

    .line 352
    .local v3, "header":Lcom/android/volley/Header;
    invoke-virtual {v3}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 353
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v3    # "header":Lcom/android/volley/Header;
    :cond_55
    goto :goto_3c

    :cond_56
    goto :goto_94

    .line 359
    :cond_57
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    .line 360
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 361
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 362
    new-instance v4, Lcom/android/volley/Header;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_93
    goto :goto_69

    .line 367
    :cond_94
    :goto_94
    return-object v1
.end method

.method protected static convertHeaders([Lcom/android/volley/Header;)Ljava/util/Map;
    .registers 5
    .param p0, "headers"    # [Lcom/android/volley/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/volley/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 319
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 320
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 322
    .end local v1    # "i":I
    :cond_1d
    return-object v0
.end method

.method private getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;
    .registers 8
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    if-nez p1, :cond_7

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 260
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 263
    iget-object v1, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    const-string v2, "If-None-Match"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_17
    iget-wide v1, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    .line 267
    iget-wide v1, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 268
    invoke-static {v1, v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->formatEpochAsRfc1123(J)Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v2, "If-Modified-Since"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_2a
    return-object v0
.end method

.method private inputStreamToBytes(Ljava/io/InputStream;I)[B
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-direct {v0, v1, p2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 283
    .local v0, "bytes":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    const/4 v1, 0x0

    .line 285
    .local v1, "buffer":[B
    const-string v2, "Error occurred when closing InputStream"

    const/4 v3, 0x0

    if-eqz p1, :cond_3f

    .line 288
    :try_start_d
    iget-object v4, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v4

    move-object v1, v4

    .line 290
    :goto_16
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "count":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_22

    .line 291
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_16

    .line 293
    :cond_22
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_3d

    .line 297
    if-eqz p1, :cond_33

    .line 298
    :try_start_28
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_33

    .line 300
    :catch_2c
    move-exception v6

    .line 303
    .local v6, "e":Ljava/io/IOException;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    .line 304
    .end local v6    # "e":Ljava/io/IOException;
    :cond_33
    :goto_33
    nop

    .line 305
    :goto_34
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v2, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 306
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 293
    return-object v4

    .line 295
    .end local v5    # "count":I
    :catchall_3d
    move-exception v4

    goto :goto_45

    .line 286
    :cond_3f
    :try_start_3f
    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    .end local v0    # "bytes":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "contentLength":I
    throw v4
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_3d

    .line 297
    .restart local v0    # "bytes":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "contentLength":I
    :goto_45
    if-eqz p1, :cond_52

    .line 298
    :try_start_47
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_52

    .line 300
    :catch_4b
    move-exception v5

    .line 303
    .local v5, "e":Ljava/io/IOException;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_53

    .line 304
    .end local v5    # "e":Ljava/io/IOException;
    :cond_52
    :goto_52
    nop

    .line 305
    :goto_53
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v2, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 306
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v4

    return-void
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BI)V
    .registers 9
    .param p1, "requestLifetime"    # J
    .param p4, "responseContents"    # [B
    .param p5, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 221
    .local p3, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_3f

    .line 222
    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 227
    if-eqz p4, :cond_20

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :cond_20
    const-string v2, "null"

    :goto_22
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 228
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 229
    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 222
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_3f
    return-void
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "start"    # J

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 276
    .local v0, "now":J
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sub-long v3, v0, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string v3, "HTTP ERROR(%s) %d ms to fetch %s"

    invoke-static {v3, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 114
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 116
    .local v9, "requestStart":J
    :goto_8
    const/4 v1, 0x0

    .line 117
    .local v1, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    const/4 v2, 0x0

    .line 118
    .local v2, "responseContents":[B
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    nop

    .line 122
    const/4 v11, 0x0

    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/volley/toolbox/BasicNetwork;->getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v7, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    invoke-virtual {v4, v8, v0}, Lcom/android/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    move-result-object v4
    :try_end_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_1e} :catch_199
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_1e} :catch_17c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_f2

    move-object v12, v4

    .line 124
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v12, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :try_start_1f
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v1

    move v15, v1

    .line 126
    .local v15, "statusCode":I
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v1
    :try_end_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f .. :try_end_28} :catch_ef
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_28} :catch_ec
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_ea

    move-object v14, v1

    .line 128
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .local v14, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    const/16 v1, 0x130

    if-ne v15, v1, :cond_6f

    .line 129
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 130
    .local v1, "entry":Lcom/android/volley/Cache$Entry;
    if-nez v1, :cond_49

    .line 131
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v17, 0x130

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v20, v4, v9

    move-object/from16 v16, v3

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v22}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 131
    return-object v3

    .line 139
    :cond_49
    invoke-static {v14, v1}, Lcom/android/volley/toolbox/BasicNetwork;->combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v28

    .line 140
    .local v28, "combinedHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v23, 0x130

    iget-object v4, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const/16 v25, 0x1

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v26, v5, v9

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_62
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d .. :try_end_62} :catch_6b
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_62} :catch_67
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_62} :catch_63

    .line 140
    return-object v3

    .line 176
    .end local v0    # "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry":Lcom/android/volley/Cache$Entry;
    .end local v15    # "statusCode":I
    .end local v28    # "combinedHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_63
    move-exception v0

    move-object v3, v14

    goto/16 :goto_f4

    .line 174
    :catch_67
    move-exception v0

    move-object v3, v14

    goto/16 :goto_17e

    .line 172
    :catch_6b
    move-exception v0

    move-object v3, v14

    goto/16 :goto_19b

    .line 149
    .restart local v0    # "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "statusCode":I
    :cond_6f
    :try_start_6f
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_73
    .catch Ljava/net/SocketTimeoutException; {:try_start_6f .. :try_end_73} :catch_e6
    .catch Ljava/net/MalformedURLException; {:try_start_6f .. :try_end_73} :catch_e2
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_df

    move-object v13, v1

    .line 150
    .local v13, "inputStream":Ljava/io/InputStream;
    if-eqz v13, :cond_82

    .line 151
    nop

    .line 152
    :try_start_77
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    move-result v1

    invoke-direct {v7, v13, v1}, Lcom/android/volley/toolbox/BasicNetwork;->inputStreamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_77 .. :try_end_7f} :catch_6b
    .catch Ljava/net/MalformedURLException; {:try_start_77 .. :try_end_7f} :catch_67
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_63

    move-object/from16 v20, v1

    .end local v2    # "responseContents":[B
    .local v1, "responseContents":[B
    goto :goto_86

    .line 156
    .end local v1    # "responseContents":[B
    .restart local v2    # "responseContents":[B
    :cond_82
    :try_start_82
    new-array v1, v11, [B
    :try_end_84
    .catch Ljava/net/SocketTimeoutException; {:try_start_82 .. :try_end_84} :catch_e6
    .catch Ljava/net/MalformedURLException; {:try_start_82 .. :try_end_84} :catch_e2
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_84} :catch_df

    .end local v2    # "responseContents":[B
    .restart local v1    # "responseContents":[B
    move-object/from16 v20, v1

    .line 160
    .end local v1    # "responseContents":[B
    .local v20, "responseContents":[B
    :goto_86
    :try_start_86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v21, v1, v9

    .line 161
    .local v21, "requestLifetime":J
    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BI)V

    .line 163
    const/16 v1, 0xc8

    if-lt v15, v1, :cond_b7

    const/16 v1, 0x12b

    if-gt v15, v1, :cond_b7

    .line 166
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_a8
    .catch Ljava/net/SocketTimeoutException; {:try_start_86 .. :try_end_a8} :catch_d9
    .catch Ljava/net/MalformedURLException; {:try_start_86 .. :try_end_a8} :catch_d3
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a8} :catch_ce

    sub-long v17, v2, v9

    move-object v2, v13

    .end local v13    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v13, v1

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    move v14, v15

    move v4, v15

    .end local v15    # "statusCode":I
    .local v4, "statusCode":I
    move-object/from16 v15, v20

    move-object/from16 v19, v3

    :try_start_b3
    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 166
    return-object v1

    .line 163
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v4    # "statusCode":I
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v15    # "statusCode":I
    :cond_b7
    move-object v2, v13

    move-object v3, v14

    move v4, v15

    .line 164
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v15    # "statusCode":I
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v4    # "statusCode":I
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v9    # "requestStart":J
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .end local v20    # "responseContents":[B
    .end local p1    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    throw v1
    :try_end_c0
    .catch Ljava/net/SocketTimeoutException; {:try_start_b3 .. :try_end_c0} :catch_c9
    .catch Ljava/net/MalformedURLException; {:try_start_b3 .. :try_end_c0} :catch_c4
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_c0} :catch_c0

    .line 176
    .end local v0    # "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "statusCode":I
    .end local v21    # "requestLifetime":J
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v9    # "requestStart":J
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .restart local v20    # "responseContents":[B
    .restart local p1    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :catch_c0
    move-exception v0

    move-object/from16 v2, v20

    goto :goto_f4

    .line 174
    :catch_c4
    move-exception v0

    move-object/from16 v2, v20

    goto/16 :goto_17e

    .line 172
    :catch_c9
    move-exception v0

    move-object/from16 v2, v20

    goto/16 :goto_19b

    .line 176
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_ce
    move-exception v0

    move-object v3, v14

    move-object/from16 v2, v20

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    goto :goto_f4

    .line 174
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_d3
    move-exception v0

    move-object v3, v14

    move-object/from16 v2, v20

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    goto/16 :goto_17e

    .line 172
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_d9
    move-exception v0

    move-object v3, v14

    move-object/from16 v2, v20

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    goto/16 :goto_19b

    .line 176
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v20    # "responseContents":[B
    .local v2, "responseContents":[B
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_df
    move-exception v0

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    goto :goto_f4

    .line 174
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_e2
    move-exception v0

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    goto/16 :goto_17e

    .line 172
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_e6
    move-exception v0

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    goto/16 :goto_19b

    .line 176
    :catch_ea
    move-exception v0

    goto :goto_f4

    .line 174
    :catch_ec
    move-exception v0

    goto/16 :goto_17e

    .line 172
    :catch_ef
    move-exception v0

    goto/16 :goto_19b

    .line 176
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v1, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :catch_f2
    move-exception v0

    move-object v12, v1

    .line 178
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v0, "e":Ljava/io/IOException;
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_f4
    if-eqz v12, :cond_176

    .line 179
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v1

    .line 183
    .local v1, "statusCode":I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unexpected response code %d for %s"

    invoke-static {v5, v4}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-eqz v2, :cond_16b

    .line 186
    new-instance v4, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v17, v5, v9

    move-object v13, v4

    move v14, v1

    move-object v15, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 193
    .local v4, "networkResponse":Lcom/android/volley/NetworkResponse;
    const/16 v5, 0x191

    if-eq v1, v5, :cond_160

    const/16 v5, 0x193

    if-ne v1, v5, :cond_12c

    goto :goto_160

    .line 197
    :cond_12c
    const/16 v5, 0x190

    if-lt v1, v5, :cond_13b

    const/16 v5, 0x1f3

    if-le v1, v5, :cond_135

    goto :goto_13b

    .line 199
    :cond_135
    new-instance v5, Lcom/android/volley/ClientError;

    invoke-direct {v5, v4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v5

    .line 200
    :cond_13b
    :goto_13b
    const/16 v5, 0x1f4

    if-lt v1, v5, :cond_15a

    const/16 v5, 0x257

    if-gt v1, v5, :cond_15a

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    move-result v5

    if-eqz v5, :cond_154

    .line 202
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5, v4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string v6, "server"

    invoke-static {v6, v8, v5}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_1a6

    .line 205
    :cond_154
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5, v4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v5

    .line 209
    :cond_15a
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5, v4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v5

    .line 195
    :cond_160
    :goto_160
    new-instance v5, Lcom/android/volley/AuthFailureError;

    invoke-direct {v5, v4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string v6, "auth"

    invoke-static {v6, v8, v5}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_1a6

    .line 212
    .end local v4    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_16b
    new-instance v4, Lcom/android/volley/NetworkError;

    invoke-direct {v4}, Lcom/android/volley/NetworkError;-><init>()V

    const-string v5, "network"

    invoke-static {v5, v8, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_1a6

    .line 181
    .end local v1    # "statusCode":I
    :cond_176
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v1, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :catch_17c
    move-exception v0

    move-object v12, v1

    .line 175
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_17e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .restart local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :catch_199
    move-exception v0

    move-object v12, v1

    .line 173
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v0, "e":Ljava/net/SocketTimeoutException;
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_19b
    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v4, "socket"

    invoke-static {v4, v8, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 214
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    nop

    .line 215
    .end local v2    # "responseContents":[B
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_1a6
    goto/16 :goto_8
.end method
