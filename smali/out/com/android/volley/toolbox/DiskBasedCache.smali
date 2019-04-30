.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20150306

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "rootDirectory"    # Ljava/io/File;

    .line 91
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 80
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 81
    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 82
    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 249
    .local v0, "firstHalfLength":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "localFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    return-object v1
.end method

.method private pruneIfNeeded(I)V
    .registers 20
    .param p1, "neededSpace"    # I

    .line 265
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget v4, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_10

    .line 266
    return-void

    .line 268
    :cond_10
    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 269
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Pruning old cache entries."

    invoke-static {v4, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_1c
    iget-wide v4, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 273
    .local v4, "before":J
    const/4 v2, 0x0

    .line 274
    .local v2, "prunedFiles":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 276
    .local v6, "startTime":J
    iget-object v8, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 277
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;>;"
    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_88

    .line 278
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 279
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 280
    .local v12, "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-object v13, v12, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v13

    .line 281
    .local v13, "deleted":Z
    if-eqz v13, :cond_57

    .line 282
    iget-wide v14, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    move-wide/from16 v16, v4

    .end local v4    # "before":J
    .local v16, "before":J
    iget-wide v3, v12, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v14, v3

    iput-wide v14, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_6d

    .line 284
    .end local v16    # "before":J
    .restart local v4    # "before":J
    :cond_57
    move-wide/from16 v16, v4

    .end local v4    # "before":J
    .restart local v16    # "before":J
    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, v12, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v12, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 286
    invoke-direct {v0, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    .line 284
    const-string v4, "Could not delete cache entry for key=%s, filename=%s"

    invoke-static {v4, v3}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :goto_6d
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 289
    add-int/lit8 v2, v2, 0x1

    .line 291
    iget-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v14, v1

    add-long/2addr v3, v14

    long-to-float v3, v3

    iget v4, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_84

    .line 292
    goto :goto_8a

    .line 294
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    .end local v12    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v13    # "deleted":Z
    :cond_84
    move-wide/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_2d

    .line 277
    .end local v16    # "before":J
    .restart local v4    # "before":J
    :cond_88
    move-wide/from16 v16, v4

    .line 296
    .end local v4    # "before":J
    .restart local v16    # "before":J
    :goto_8a
    sget-boolean v3, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_b2

    .line 297
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    .line 297
    const-string v4, "pruned %d files, %d bytes, %d ms"

    invoke-static {v4, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_b2
    return-void
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 310
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 311
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v2, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_22

    .line 313
    :cond_10
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 314
    .local v0, "oldEntry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 316
    .end local v0    # "oldEntry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :goto_22
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 538
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 541
    return v0

    .line 539
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method static readHeaderList(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;
    .registers 7
    .param p0, "cis"    # Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 610
    .local v0, "size":I
    if-ltz v0, :cond_31

    .line 614
    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_12

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :goto_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_30

    .line 616
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Lcom/android/volley/Header;

    invoke-direct {v5, v3, v4}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 620
    .end local v2    # "i":I
    :cond_30
    return-object v1

    .line 611
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :cond_31
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readHeaderList size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method static readInt(Ljava/io/InputStream;)I
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "n":I
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 554
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 555
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 556
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 557
    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    const-wide/16 v0, 0x0

    .line 573
    .local v0, "n":J
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 v6, 0x0

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 574
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 575
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 576
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 577
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 578
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 579
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 580
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 581
    return-wide v0
.end method

.method static readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "cis"    # Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 592
    .local v0, "n":J
    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    move-result-object v2

    .line 593
    .local v2, "b":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 322
    .local v0, "removed":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-eqz v0, :cond_11

    .line 323
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 325
    :cond_11
    return-void
.end method

.method static streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B
    .registers 8
    .param p0, "cis"    # Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRemaining()J

    move-result-wide v0

    .line 338
    .local v0, "maxLength":J
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_20

    cmp-long v2, p1, v0

    if-gtz v2, :cond_20

    long-to-int v2, p1

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_20

    .line 341
    long-to-int v2, p1

    new-array v2, v2, [B

    .line 342
    .local v2, "bytes":[B
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 343
    return-object v2

    .line 339
    .end local v2    # "bytes":[B
    :cond_20
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streamToBytes length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", maxLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static writeHeaderList(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    if-eqz p0, :cond_29

    .line 598
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 599
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Header;

    .line 600
    .local v1, "header":Lcom/android/volley/Header;
    invoke-virtual {v1}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 602
    .end local v1    # "header":Lcom/android/volley/Header;
    goto :goto_d

    :cond_28
    goto :goto_2d

    .line 604
    :cond_29
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 606
    :goto_2d
    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .registers 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 546
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 547
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 548
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 549
    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .registers 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 562
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 563
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 564
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 565
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 566
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 567
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 568
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 569
    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 586
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 587
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 6

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 99
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_17

    aget-object v4, v0, v3

    .line 100
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 99
    nop

    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 103
    .end local p0    # "this":Lcom/android/volley/toolbox/DiskBasedCache;
    :cond_17
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 105
    const-string v2, "Cache cleared."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 106
    monitor-exit p0

    return-void

    .line 96
    .end local v0    # "files":[Ljava/io/File;
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method createInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method createOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 13
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7f

    .line 113
    .local v0, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 114
    monitor-exit p0

    return-object v1

    .line 116
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_7f

    .line 118
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_15
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->createInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_66
    .catchall {:try_start_15 .. :try_end_27} :catchall_7f

    .line 122
    .local v6, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_27
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v7

    .line 123
    .local v7, "entryOnDisk":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-object v8, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 125
    const-string v8, "%s: key=%s, found=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object p1, v9, v3

    iget-object v10, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v10, v9, v5

    .line 125
    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_61

    .line 129
    nop

    .line 136
    :try_start_4b
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_66
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7f

    .line 129
    monitor-exit p0

    return-object v1

    .line 131
    .end local p0    # "this":Lcom/android/volley/toolbox/DiskBasedCache;
    :cond_50
    :try_start_50
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRemaining()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    move-result-object v8

    .line 132
    .local v8, "data":[B
    invoke-virtual {v0, v8}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;

    move-result-object v9
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_61

    .line 136
    :try_start_5c
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_66
    .catchall {:try_start_5c .. :try_end_5f} :catchall_7f

    .line 132
    monitor-exit p0

    return-object v9

    .line 136
    .end local v7    # "entryOnDisk":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v8    # "data":[B
    :catchall_61
    move-exception v7

    :try_start_62
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V

    .end local v0    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v2    # "file":Ljava/io/File;
    .end local p1    # "key":Ljava/lang/String;
    throw v7
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_7f

    .line 138
    .end local v6    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_66
    move-exception v6

    .line 139
    .local v6, "e":Ljava/io/IOException;
    :try_start_67
    const-string v7, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v7, v5}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_67 .. :try_end_7d} :catchall_7f

    .line 141
    monitor-exit p0

    return-object v1

    .line 110
    .end local v0    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .registers 10

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 152
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_22

    .line 153
    const-string v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_63

    .line 155
    .end local p0    # "this":Lcom/android/volley/toolbox/DiskBasedCache;
    :cond_22
    monitor-exit p0

    return-void

    .line 157
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_63

    .line 158
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_2e

    .line 159
    monitor-exit p0

    return-void

    .line 161
    :cond_2e
    :try_start_2e
    array-length v2, v0

    :goto_2f
    if-ge v1, v2, :cond_61

    aget-object v3, v0, v1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_63

    .line 163
    .local v3, "file":Ljava/io/File;
    :try_start_33
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 164
    .local v4, "entrySize":J
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->createInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_45} :catch_5a
    .catchall {:try_start_33 .. :try_end_45} :catchall_63

    .line 168
    .local v6, "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_45
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v7

    .line 171
    .local v7, "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iput-wide v4, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 172
    iget-object v8, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_55

    .line 176
    .end local v7    # "entry":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_start_50
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V

    .line 177
    nop

    .line 181
    .end local v4    # "entrySize":J
    .end local v6    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_5e

    .line 176
    .restart local v4    # "entrySize":J
    .restart local v6    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catchall_55
    move-exception v7

    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V

    .end local v0    # "files":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    throw v7
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5a} :catch_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_63

    .line 178
    .end local v4    # "entrySize":J
    .end local v6    # "cis":Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_5a
    move-exception v4

    .line 180
    .local v4, "e":Ljava/io/IOException;
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_63

    .line 161
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 183
    :cond_61
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "files":[Ljava/io/File;
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    monitor-enter p0

    .line 193
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 194
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_12

    .line 195
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 196
    if-eqz p2, :cond_f

    .line 197
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 199
    .end local p0    # "this":Lcom/android/volley/toolbox/DiskBasedCache;
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 201
    :cond_12
    monitor-exit p0

    return-void

    .line 192
    .end local v0    # "entry":Lcom/android/volley/Cache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "fullExpire":Z
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5a

    .line 209
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_d
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->createOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    .local v3, "fos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v4, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 211
    .local v4, "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v4, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    move-result v5

    .line 212
    .local v5, "success":Z
    if-eqz v5, :cond_2e

    .line 217
    iget-object v6, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v3, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 218
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 219
    invoke-direct {p0, p1, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2c} :catch_44
    .catchall {:try_start_d .. :try_end_2c} :catchall_5a

    .line 220
    monitor-exit p0

    return-void

    .line 213
    .end local p0    # "this":Lcom/android/volley/toolbox/DiskBasedCache;
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 214
    const-string v6, "Failed to write header for %s"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "entry":Lcom/android/volley/Cache$Entry;
    throw v6
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_44} :catch_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_5a

    .line 221
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "e":Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5    # "success":Z
    .restart local v0    # "file":Ljava/io/File;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "entry":Lcom/android/volley/Cache$Entry;
    :catch_44
    move-exception v3

    .line 223
    :try_start_45
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 224
    .local v3, "deleted":Z
    if-nez v3, :cond_58

    .line 225
    const-string v4, "Could not clean up file %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_5a

    .line 227
    :cond_58
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "deleted":Z
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "entry":Lcom/android/volley/Cache$Entry;
    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 232
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 233
    .local v0, "deleted":Z
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 234
    if-nez v0, :cond_20

    .line 235
    const-string v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 237
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 235
    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 239
    .end local p0    # "this":Lcom/android/volley/toolbox/DiskBasedCache;
    :cond_20
    monitor-exit p0

    return-void

    .line 231
    .end local v0    # "deleted":Z
    .end local p1    # "key":Ljava/lang/String;
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
