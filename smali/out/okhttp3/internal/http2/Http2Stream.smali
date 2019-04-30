.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp3/internal/http2/Http2Connection;

.field errorCode:Lokhttp3/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field final id:I

.field final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 32
    return-void
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "connection"    # Lokhttp3/internal/http2/Http2Connection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/http2/Http2Connection;",
            "ZZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 65
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 66
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 77
    if-eqz p2, :cond_51

    .line 78
    if-eqz p5, :cond_49

    .line 79
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 80
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 81
    iget-object v0, p2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 82
    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 83
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object v1, p2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 84
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 85
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iput-boolean p4, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 86
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean p3, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/http2/Http2Stream;->requestHeaders:Ljava/util/List;

    .line 88
    return-void

    .line 78
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z
    .registers 4
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .line 242
    nop

    .line 243
    monitor-enter p0

    .line 244
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 245
    monitor-exit p0

    return v1

    .line 247
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_17

    .line 248
    monitor-exit p0

    return v1

    .line 250
    :cond_17
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_26

    .line 253
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 254
    const/4 v0, 0x1

    return v0

    .line 252
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .line 557
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 558
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 559
    :cond_e
    return-void
.end method

.method cancelStreamIfNecessary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    nop

    .line 445
    monitor-enter p0

    .line 446
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 447
    .local v0, "cancel":Z
    :goto_1d
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 448
    .local v1, "open":Z
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_34

    .line 449
    if-eqz v0, :cond_2a

    .line 454
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v2}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_33

    .line 455
    :cond_2a
    if-nez v1, :cond_33

    .line 456
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v3, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v2, v3}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 458
    :cond_33
    :goto_33
    return-void

    .line 448
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v0, :cond_1f

    .line 564
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_17

    .line 566
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_11

    .line 569
    return-void

    .line 567
    :cond_11
    new-instance v1, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v1, v0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v1

    .line 565
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .param p1, "rstStatusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 224
    return-void

    .line 226
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V

    .line 227
    return-void
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .line 234
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    return-void

    .line 237
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 238
    return-void
.end method

.method public getConnection()Lokhttp3/internal/http2/Http2Connection;
    .registers 2

    .line 124
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/http2/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lokhttp3/internal/http2/Http2Stream;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    .line 91
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    .line 210
    monitor-enter p0

    .line 211
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 212
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 215
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    .line 214
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSource()Lokio/Source;
    .registers 2

    .line 200
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    .line 119
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 120
    .local v0, "streamIsClient":Z
    :goto_a
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 107
    monitor-exit p0

    return v1

    .line 109
    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_26

    .end local p0    # "this":Lokhttp3/internal/http2/Http2Stream;
    :cond_14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_26

    :cond_20
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    if-eqz v0, :cond_26

    .line 112
    monitor-exit p0

    return v1

    .line 114
    :cond_26
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 105
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 2

    .line 191
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .registers 6
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    nop

    .line 281
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lokio/BufferedSource;J)V

    .line 282
    return-void
.end method

.method receiveFin()V
    .registers 4

    .line 285
    nop

    .line 287
    monitor-enter p0

    .line 288
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 289
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 290
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_19

    .line 292
    if-nez v0, :cond_18

    .line 293
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 295
    :cond_18
    return-void

    .line 291
    .end local v0    # "open":Z
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    nop

    .line 259
    const/4 v0, 0x1

    .line 260
    .local v0, "open":Z
    monitor-enter p0

    .line 261
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 262
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-nez v1, :cond_15

    .line 263
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 264
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    move v0, v1

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_28

    .line 267
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 273
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_33

    .line 274
    if-nez v0, :cond_32

    .line 275
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 277
    :cond_32
    return-void

    .line 273
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    monitor-enter p0

    .line 298
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_a

    .line 299
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 302
    .end local p0    # "this":Lokhttp3/internal/http2/Http2Stream;
    :cond_a
    monitor-exit p0

    return-void

    .line 297
    .end local p1    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendResponseHeaders(Ljava/util/List;Z)V
    .registers 6
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    nop

    .line 172
    if-eqz p1, :cond_22

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 177
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 178
    if-nez p2, :cond_f

    .line 179
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean v1, v2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 180
    const/4 v0, 0x1

    .line 182
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_1f

    .line 183
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V

    .line 185
    if-eqz v0, :cond_1e

    .line 186
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    .line 188
    :cond_1e
    return-void

    .line 182
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 173
    .end local v0    # "outFinished":Z
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "responseHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized takeResponseHeaders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 140
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_40

    .line 142
    :goto_c
    :try_start_c
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_31

    if-nez v0, :cond_1a

    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_1a

    .line 143
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_c

    .line 146
    :catchall_18
    move-exception v0

    goto :goto_32

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 147
    nop

    .line 148
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 149
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    if-eqz v0, :cond_29

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_40

    .line 151
    monitor-exit p0

    return-object v0

    .line 153
    .end local p0    # "this":Lokhttp3/internal/http2/Http2Stream;
    :cond_29
    :try_start_29
    new-instance v1, Lokhttp3/internal/http2/StreamResetException;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v1, v2}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v1

    .line 146
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    :catchall_31
    move-exception v0

    :goto_32
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    .line 138
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_40

    .line 136
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method waitForIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 577
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 580
    nop

    .line 581
    return-void

    .line 578
    :catch_5
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 2

    .line 195
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
