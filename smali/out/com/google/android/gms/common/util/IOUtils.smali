.class public final Lcom/google/android/gms/common/util/IOUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/os/ParcelFileDescriptor;)V
    .registers 1
    .param p0    # Landroid/os/ParcelFileDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    if-eqz p0, :cond_7

    .line 8
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 9
    return-void

    .line 10
    :catch_6
    move-exception p0

    .line 11
    :cond_7
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    if-eqz p0, :cond_7

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4
    return-void

    .line 5
    :catch_6
    move-exception p0

    .line 6
    :cond_7
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/IOUtils;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .registers 11
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-array v0, p3, [B

    .line 16
    const-wide/16 v1, 0x0

    .line 17
    :goto_4
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    .line 18
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 19
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1b

    goto :goto_4

    .line 20
    :cond_12
    if-eqz p2, :cond_1a

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    :cond_1a
    return-wide v1

    .line 23
    :catchall_1b
    move-exception p3

    if-eqz p2, :cond_24

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_24
    throw p3

    return-void
.end method

.method public static isGzipByteBuffer([B)Z
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_16

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    const v0, 0x8b1f

    if-ne p0, v0, :cond_16

    return v2

    :cond_16
    return v1
.end method

.method public static readInputStreamFully(Ljava/io/InputStream;)[B
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static readInputStreamFully(Ljava/io/InputStream;Z)[B
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/util/IOUtils;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    nop

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 36
    :goto_10
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 37
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 38
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    goto :goto_10

    .line 40
    :cond_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide p0

    return-wide p0
.end method
