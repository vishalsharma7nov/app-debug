.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/cache2/Relay;

    .line 224
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_5

    return-void

    .line 345
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "fileToClose":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 349
    :try_start_c
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v4, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 350
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v3, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v3, :cond_23

    .line 351
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v3, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v1, v3

    .line 352
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v0, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 354
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2a

    .line 356
    if-eqz v1, :cond_29

    .line 357
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 359
    :cond_29
    return-void

    .line 354
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 25
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_152

    .line 258
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 260
    :goto_b
    :try_start_b
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    move-wide v9, v7

    .local v9, "upstreamPos":J
    const-wide/16 v11, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_3a

    .line 262
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-boolean v0, v0, Lokhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v0, :cond_20

    monitor-exit v4

    return-wide v11

    .line 265
    :cond_20
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v0, :cond_2e

    .line 266
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v5}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 267
    goto :goto_b

    .line 271
    :cond_2e
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, "source":I
    monitor-exit v4

    move v5, v0

    goto :goto_4d

    .line 276
    .end local v0    # "source":I
    :cond_3a
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long v5, v9, v5

    .line 279
    .local v5, "bufferPos":J
    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v7, v5

    if-gez v0, :cond_131

    .line 280
    const/4 v0, 0x2

    .line 281
    .restart local v0    # "source":I
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_14f

    move v5, v0

    .line 292
    .end local v0    # "source":I
    .local v5, "source":I
    :goto_4d
    const/4 v0, 0x2

    const-wide/16 v6, 0x20

    if-ne v5, v0, :cond_6c

    .line 293
    iget-wide v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v11, v9, v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 294
    .local v11, "bytesToRead":J
    iget-object v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-wide v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v14, v6

    move-object/from16 v16, p1

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v18}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    iget-wide v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v6, v11

    iput-wide v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 296
    return-wide v11

    .line 302
    .end local v11    # "bytesToRead":J
    :cond_6c
    const/4 v4, 0x0

    :try_start_6d
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-object v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v13, v13, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v0, v8, v13, v14}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v13
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_11d

    .line 305
    .local v13, "upstreamBytesRead":J
    cmp-long v0, v13, v11

    if-nez v0, :cond_9c

    .line 306
    :try_start_81
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v9, v10}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_98

    .line 307
    nop

    .line 332
    iget-object v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v6

    .line 333
    :try_start_8a
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v4, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v6

    .line 307
    return-wide v11

    .line 335
    :catchall_95
    move-exception v0

    monitor-exit v6
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_95

    throw v0

    .line 332
    .end local v13    # "upstreamBytesRead":J
    :catchall_98
    move-exception v0

    move v15, v5

    goto/16 :goto_11f

    .line 311
    .restart local v13    # "upstreamBytesRead":J
    :cond_9c
    :try_start_9c
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 312
    .local v11, "bytesRead":J
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v15, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v17, 0x0

    move-object/from16 v16, p1

    move-wide/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    :try_end_ad
    .catchall {:try_start_9c .. :try_end_ad} :catchall_11d

    .line 313
    move v8, v5

    .end local v5    # "source":I
    .local v8, "source":I
    :try_start_ae
    iget-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v11

    iput-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    iget-object v15, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    add-long v16, v9, v6

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 317
    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v18

    .line 316
    move-wide/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 319
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4
    :try_end_c7
    .catchall {:try_start_ae .. :try_end_c7} :catchall_11a

    .line 321
    :try_start_c7
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v0, v5, v13, v14}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    :try_end_dc
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_112

    move v15, v8

    .end local v8    # "source":I
    .local v15, "source":I
    :try_start_dd
    iget-wide v7, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_f7

    .line 323
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v7, v7, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 327
    :cond_f7
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v5, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v5, v13

    iput-wide v5, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    monitor-exit v4
    :try_end_ff
    .catchall {:try_start_dd .. :try_end_ff} :catchall_118

    .line 330
    nop

    .line 332
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_103
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v4, 0x0

    iput-object v4, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5

    .line 330
    return-wide v11

    .line 335
    :catchall_10f
    move-exception v0

    monitor-exit v5
    :try_end_111
    .catchall {:try_start_103 .. :try_end_111} :catchall_10f

    throw v0

    .line 328
    .end local v15    # "source":I
    .restart local v8    # "source":I
    :catchall_112
    move-exception v0

    move v15, v8

    .end local v8    # "source":I
    .restart local v15    # "source":I
    :goto_114
    :try_start_114
    monitor-exit v4
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_118

    .end local v9    # "upstreamPos":J
    .end local v15    # "source":I
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    :try_start_115
    throw v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_116

    .line 332
    .end local v11    # "bytesRead":J
    .end local v13    # "upstreamBytesRead":J
    .restart local v9    # "upstreamPos":J
    .restart local v15    # "source":I
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_116
    move-exception v0

    goto :goto_11f

    .line 328
    .restart local v11    # "bytesRead":J
    .restart local v13    # "upstreamBytesRead":J
    :catchall_118
    move-exception v0

    goto :goto_114

    .line 332
    .end local v11    # "bytesRead":J
    .end local v13    # "upstreamBytesRead":J
    .end local v15    # "source":I
    .restart local v8    # "source":I
    :catchall_11a
    move-exception v0

    move v15, v8

    .end local v8    # "source":I
    .restart local v15    # "source":I
    goto :goto_11f

    .end local v15    # "source":I
    .restart local v5    # "source":I
    :catchall_11d
    move-exception v0

    move v15, v5

    .end local v5    # "source":I
    .restart local v15    # "source":I
    :goto_11f
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_122
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v6, 0x0

    iput-object v6, v4, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5
    :try_end_12d
    .catchall {:try_start_122 .. :try_end_12d} :catchall_12e

    throw v0

    :catchall_12e
    move-exception v0

    :try_start_12f
    monitor-exit v5
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v0

    .line 285
    .end local v15    # "source":I
    .local v5, "bufferPos":J
    :cond_131
    :try_start_131
    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v7, v9, v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 286
    .local v7, "bytesToRead":J
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v11, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-wide v12, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v14, v12, v5

    move-object/from16 v12, p1

    move-wide v13, v14

    move-wide v15, v7

    invoke-virtual/range {v11 .. v16}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 287
    iget-wide v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v11, v7

    iput-wide v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    monitor-exit v4

    return-wide v7

    .line 289
    .end local v5    # "bufferPos":J
    .end local v7    # "bytesToRead":J
    .end local v9    # "upstreamPos":J
    :catchall_14f
    move-exception v0

    monitor-exit v4
    :try_end_151
    .catchall {:try_start_131 .. :try_end_151} :catchall_14f

    throw v0

    .line 252
    :cond_152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 340
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
