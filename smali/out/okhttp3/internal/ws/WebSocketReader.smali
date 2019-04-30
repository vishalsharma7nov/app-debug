.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Lokio/Buffer;

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .registers 6
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "frameCallback"    # Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 73
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 79
    if-eqz p2, :cond_38

    .line 80
    if-eqz p3, :cond_30

    .line 81
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 82
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 83
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 86
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    move-object v1, v0

    goto :goto_23

    :cond_20
    const/4 v1, 0x4

    new-array v1, v1, [B

    :goto_23
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 87
    if-eqz p1, :cond_28

    goto :goto_2d

    :cond_28
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :goto_2d
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 88
    return-void

    .line 80
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readControlFrame()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2b

    .line 173
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-interface {v4, v5, v0, v1}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 175
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_2b

    .line 176
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 177
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 178
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 179
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 183
    :cond_2b
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_a4

    .line 206
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_4d
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    .line 189
    goto :goto_9b

    .line 185
    :pswitch_59
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 186
    goto :goto_9b

    .line 191
    :pswitch_65
    const/16 v0, 0x3ed

    .line 192
    .local v0, "code":I
    const-string v1, ""

    .line 193
    .local v1, "reason":Ljava/lang/String;
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 194
    .local v4, "bufferSize":J
    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_9c

    .line 196
    cmp-long v6, v4, v2

    if-eqz v6, :cond_92

    .line 197
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readShort()S

    move-result v0

    .line 198
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "codeExceptionMessage":Ljava/lang/String;
    if-nez v2, :cond_8c

    goto :goto_92

    :cond_8c
    new-instance v3, Ljava/net/ProtocolException;

    invoke-direct {v3, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    .end local v2    # "codeExceptionMessage":Ljava/lang/String;
    :cond_92
    :goto_92
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v2, v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 203
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 204
    nop

    .line 208
    .end local v0    # "code":I
    .end local v1    # "reason":Ljava/lang/String;
    .end local v4    # "bufferSize":J
    :goto_9b
    return-void

    .line 195
    .restart local v0    # "code":I
    .restart local v1    # "reason":Ljava/lang/String;
    .restart local v4    # "bufferSize":J
    :cond_9c
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Malformed close payload length of 1."

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_a4
    .packed-switch 0x8
        :pswitch_65
        :pswitch_59
        :pswitch_4d
    .end packed-switch
.end method

.method private readHeader()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_116

    .line 114
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 115
    .local v0, "timeoutBefore":J
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 117
    :try_start_17
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_109

    and-int/lit16 v2, v2, 0xff

    .line 119
    .local v2, "b0":I
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 120
    nop

    .line 122
    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 123
    and-int/lit16 v3, v2, 0x80

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    iput-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 124
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    iput-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 127
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v3, :cond_54

    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v3, :cond_4c

    goto :goto_54

    .line 128
    :cond_4c
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Control frames must be final."

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_54
    :goto_54
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    .line 132
    .local v3, "reservedFlag1":Z
    :goto_5b
    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_61

    const/4 v6, 0x1

    goto :goto_62

    :cond_61
    const/4 v6, 0x0

    .line 133
    .local v6, "reservedFlag2":Z
    :goto_62
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_68

    const/4 v7, 0x1

    goto :goto_69

    :cond_68
    const/4 v7, 0x0

    .line 134
    .local v7, "reservedFlag3":Z
    :goto_69
    if-nez v3, :cond_101

    if-nez v6, :cond_101

    if-nez v7, :cond_101

    .line 139
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 141
    .local v8, "b1":I
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v4, 0x0

    .line 142
    .local v4, "isMasked":Z
    :goto_7d
    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v4, v5, :cond_8e

    .line 144
    new-instance v9, Ljava/net/ProtocolException;

    if-eqz v5, :cond_88

    .line 145
    const-string v5, "Server-sent frames must not be masked."

    goto :goto_8a

    .line 146
    :cond_88
    const-string v5, "Client-sent frames must be masked."

    :goto_8a
    invoke-direct {v9, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 150
    :cond_8e
    and-int/lit8 v5, v8, 0x7f

    int-to-long v9, v5

    iput-wide v9, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 151
    iget-wide v9, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v11, 0x7e

    cmp-long v5, v9, v11

    if-nez v5, :cond_a9

    .line 152
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readShort()S

    move-result v5

    int-to-long v9, v5

    const-wide/32 v11, 0xffff

    and-long/2addr v9, v11

    iput-wide v9, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    goto :goto_e2

    .line 153
    :cond_a9
    const-wide/16 v11, 0x7f

    cmp-long v5, v9, v11

    if-nez v5, :cond_e2

    .line 154
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 155
    iget-wide v9, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-ltz v5, :cond_c0

    goto :goto_e2

    .line 156
    :cond_c0
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Frame length 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 157
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    :cond_e2
    :goto_e2
    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_f7

    iget-wide v9, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v11, 0x7d

    cmp-long v5, v9, v11

    if-gtz v5, :cond_ef

    goto :goto_f7

    .line 162
    :cond_ef
    new-instance v5, Ljava/net/ProtocolException;

    const-string v9, "Control frame must be less than 125B."

    invoke-direct {v5, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    :cond_f7
    :goto_f7
    if-eqz v4, :cond_100

    .line 167
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v9, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v5, v9}, Lokio/BufferedSource;->readFully([B)V

    .line 169
    :cond_100
    return-void

    .line 136
    .end local v4    # "isMasked":Z
    .end local v8    # "b1":I
    :cond_101
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Reserved flags are unsupported."

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    .end local v2    # "b0":I
    .end local v3    # "reservedFlag1":Z
    .end local v6    # "reservedFlag2":Z
    .end local v7    # "reservedFlag3":Z
    :catchall_109
    move-exception v2

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v2

    .line 110
    .end local v0    # "timeoutBefore":J
    :cond_116
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMessage()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_62

    .line 245
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_38

    .line 246
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 248
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_38

    .line 249
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 250
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 251
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 252
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 256
    :cond_38
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_3d

    .line 263
    return-void

    .line 258
    :cond_3d
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 259
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-nez v0, :cond_45

    goto :goto_0

    .line 260
    :cond_45
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private readMessageFrame()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 212
    .local v0, "opcode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_24

    .line 213
    :cond_9
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_24
    :goto_24
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V

    .line 218
    if-ne v0, v1, :cond_35

    .line 219
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    goto :goto_40

    .line 221
    :cond_35
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    .line 223
    :goto_40
    return-void
.end method

.method private readUntilNonControlFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_10

    .line 228
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 229
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_c

    .line 230
    goto :goto_10

    .line 232
    :cond_c
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    .line 234
    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method processNextFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 102
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_b

    .line 103
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_e

    .line 105
    :cond_b
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    .line 107
    :goto_e
    return-void
.end method
