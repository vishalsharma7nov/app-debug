.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 41
    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 20
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 196
    .local v2, "low":I
    array-length v3, v0

    .line 197
    .local v3, "high":I
    const/4 v4, 0x0

    .line 198
    .local v4, "match":Ljava/lang/String;
    :goto_7
    if-ge v2, v3, :cond_a0

    .line 199
    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    .line 202
    .local v5, "mid":I
    :goto_d
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_19

    aget-byte v7, v0, v5

    if-eq v7, v6, :cond_19

    .line 203
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 205
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 208
    const/4 v7, 0x1

    .line 209
    .local v7, "end":I
    :goto_1c
    add-int v8, v5, v7

    aget-byte v8, v0, v8

    if-eq v8, v6, :cond_25

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 212
    :cond_25
    add-int v6, v5, v7

    sub-int/2addr v6, v5

    .line 217
    .local v6, "publicSuffixLength":I
    move/from16 v8, p2

    .line 218
    .local v8, "currentLabelIndex":I
    const/4 v9, 0x0

    .line 219
    .local v9, "currentLabelByteIndex":I
    const/4 v10, 0x0

    .line 221
    .local v10, "publicSuffixByteIndex":I
    const/4 v11, 0x0

    .line 224
    .local v11, "expectDot":Z
    :goto_2d
    if-eqz v11, :cond_33

    .line 225
    const/16 v12, 0x2e

    .line 226
    .local v12, "byte0":I
    const/4 v11, 0x0

    goto :goto_39

    .line 228
    .end local v12    # "byte0":I
    :cond_33
    aget-object v12, v1, v8

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    .line 231
    .restart local v12    # "byte0":I
    :goto_39
    add-int v13, v5, v10

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    .line 233
    .local v13, "byte1":I
    sub-int v14, v12, v13

    .line 234
    .local v14, "compareResult":I
    if-eqz v14, :cond_44

    goto :goto_56

    .line 236
    :cond_44
    add-int/lit8 v10, v10, 0x1

    .line 237
    add-int/lit8 v9, v9, 0x1

    .line 238
    if-ne v10, v6, :cond_4b

    goto :goto_56

    .line 240
    :cond_4b
    aget-object v15, v1, v8

    array-length v15, v15

    if-ne v15, v9, :cond_9b

    .line 243
    array-length v15, v1

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_92

    .line 244
    nop

    .line 253
    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    :goto_56
    if-gez v14, :cond_5b

    .line 254
    add-int/lit8 v3, v5, -0x1

    goto :goto_87

    .line 255
    :cond_5b
    if-lez v14, :cond_63

    .line 256
    add-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    move v2, v12

    .end local v2    # "low":I
    .local v12, "low":I
    goto :goto_87

    .line 259
    .end local v12    # "low":I
    .restart local v2    # "low":I
    :cond_63
    sub-int v12, v6, v10

    .line 260
    .local v12, "publicSuffixBytesLeft":I
    aget-object v13, v1, v8

    array-length v13, v13

    sub-int/2addr v13, v9

    .line 261
    .local v13, "labelBytesLeft":I
    add-int/lit8 v15, v8, 0x1

    .local v15, "i":I
    :goto_6b
    move/from16 v16, v2

    .end local v2    # "low":I
    .local v16, "low":I
    array-length v2, v1

    if-ge v15, v2, :cond_79

    .line 262
    aget-object v2, v1, v15

    array-length v2, v2

    add-int/2addr v13, v2

    .line 261
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_6b

    .line 265
    .end local v15    # "i":I
    :cond_79
    if-ge v13, v12, :cond_81

    .line 266
    add-int/lit8 v2, v5, -0x1

    move v3, v2

    move/from16 v2, v16

    .end local v3    # "high":I
    .local v2, "high":I
    goto :goto_87

    .line 267
    .end local v2    # "high":I
    .restart local v3    # "high":I
    :cond_81
    if-le v13, v12, :cond_89

    .line 268
    add-int v2, v5, v7

    add-int/lit8 v2, v2, 0x1

    .line 275
    .end local v5    # "mid":I
    .end local v6    # "publicSuffixLength":I
    .end local v7    # "end":I
    .end local v8    # "currentLabelIndex":I
    .end local v9    # "currentLabelByteIndex":I
    .end local v10    # "publicSuffixByteIndex":I
    .end local v11    # "expectDot":Z
    .end local v12    # "publicSuffixBytesLeft":I
    .end local v13    # "labelBytesLeft":I
    .end local v14    # "compareResult":I
    .end local v16    # "low":I
    .local v2, "low":I
    :goto_87
    goto/16 :goto_7

    .line 271
    .end local v2    # "low":I
    .restart local v5    # "mid":I
    .restart local v6    # "publicSuffixLength":I
    .restart local v7    # "end":I
    .restart local v8    # "currentLabelIndex":I
    .restart local v9    # "currentLabelByteIndex":I
    .restart local v10    # "publicSuffixByteIndex":I
    .restart local v11    # "expectDot":Z
    .restart local v12    # "publicSuffixBytesLeft":I
    .restart local v13    # "labelBytesLeft":I
    .restart local v14    # "compareResult":I
    .restart local v16    # "low":I
    :cond_89
    new-instance v2, Ljava/lang/String;

    sget-object v15, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v5, v6, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    .line 272
    goto :goto_a2

    .line 246
    .end local v16    # "low":I
    .restart local v2    # "low":I
    .local v12, "byte0":I
    .local v13, "byte1":I
    :cond_92
    move/from16 v16, v2

    .end local v2    # "low":I
    .restart local v16    # "low":I
    add-int/lit8 v8, v8, 0x1

    .line 247
    const/4 v2, -0x1

    .line 248
    .end local v9    # "currentLabelByteIndex":I
    .local v2, "currentLabelByteIndex":I
    const/4 v9, 0x1

    move v11, v9

    move v9, v2

    .end local v11    # "expectDot":Z
    .local v9, "expectDot":Z
    goto :goto_9d

    .line 240
    .end local v16    # "low":I
    .local v2, "low":I
    .local v9, "currentLabelByteIndex":I
    .restart local v11    # "expectDot":Z
    :cond_9b
    move/from16 v16, v2

    .line 251
    .end local v2    # "low":I
    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    .restart local v16    # "low":I
    :goto_9d
    move/from16 v2, v16

    goto :goto_2d

    .line 198
    .end local v5    # "mid":I
    .end local v6    # "publicSuffixLength":I
    .end local v7    # "end":I
    .end local v8    # "currentLabelIndex":I
    .end local v9    # "currentLabelByteIndex":I
    .end local v10    # "publicSuffixByteIndex":I
    .end local v11    # "expectDot":Z
    .end local v14    # "compareResult":I
    .end local v16    # "low":I
    .restart local v2    # "low":I
    :cond_a0
    move/from16 v16, v2

    .line 276
    .end local v2    # "low":I
    .restart local v16    # "low":I
    :goto_a2
    return-object v4
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p1, "domainLabels"    # [Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 110
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_1d

    .line 113
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 115
    goto :goto_1d

    .line 114
    :catch_1c
    move-exception v0

    .line 118
    :goto_1d
    monitor-enter p0

    .line 119
    :try_start_1e
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_bf

    .line 123
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_c7

    .line 126
    array-length v0, p1

    new-array v0, v0, [[B

    .line 127
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    array-length v3, p1

    if-ge v2, v3, :cond_37

    .line 128
    aget-object v3, p1, v2

    sget-object v4, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 133
    .end local v2    # "i":I
    :cond_37
    const/4 v2, 0x0

    .line 134
    .local v2, "exactMatch":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    array-length v4, v0

    if-ge v3, v4, :cond_49

    .line 135
    iget-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v4, v0, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "rule":Ljava/lang/String;
    if-eqz v4, :cond_46

    .line 137
    move-object v2, v4

    .line 138
    goto :goto_49

    .line 134
    .end local v4    # "rule":Ljava/lang/String;
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 147
    .end local v3    # "i":I
    :cond_49
    :goto_49
    const/4 v3, 0x0

    .line 148
    .local v3, "wildcardMatch":Ljava/lang/String;
    array-length v4, v0

    if-le v4, v1, :cond_69

    .line 149
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 150
    .local v4, "labelsWithWildcard":[[B
    const/4 v5, 0x0

    .local v5, "labelIndex":I
    :goto_54
    array-length v6, v4

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_69

    .line 151
    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v6, v4, v5

    .line 152
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v6, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "rule":Ljava/lang/String;
    if-eqz v6, :cond_66

    .line 154
    move-object v3, v6

    .line 155
    goto :goto_69

    .line 150
    .end local v6    # "rule":Ljava/lang/String;
    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 161
    .end local v4    # "labelsWithWildcard":[[B
    .end local v5    # "labelIndex":I
    :cond_69
    :goto_69
    const/4 v4, 0x0

    .line 162
    .local v4, "exception":Ljava/lang/String;
    if-eqz v3, :cond_7e

    .line 163
    const/4 v5, 0x0

    .restart local v5    # "labelIndex":I
    :goto_6d
    array-length v6, v0

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_7e

    .line 164
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v6, v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v6

    .line 166
    .restart local v6    # "rule":Ljava/lang/String;
    if-eqz v6, :cond_7b

    .line 167
    move-object v4, v6

    .line 168
    goto :goto_7e

    .line 163
    .end local v6    # "rule":Ljava/lang/String;
    :cond_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 173
    .end local v5    # "labelIndex":I
    :cond_7e
    :goto_7e
    if-eqz v4, :cond_98

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local v4    # "exception":Ljava/lang/String;
    .local v1, "exception":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 177
    .end local v1    # "exception":Ljava/lang/String;
    .restart local v4    # "exception":Ljava/lang/String;
    :cond_98
    if-nez v2, :cond_9f

    if-nez v3, :cond_9f

    .line 178
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object v1

    .line 181
    :cond_9f
    if-eqz v2, :cond_a8

    .line 182
    const-string v1, "\\."

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_aa

    .line 183
    :cond_a8
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_aa
    nop

    .line 185
    .local v1, "exactRuleLabels":[Ljava/lang/String;
    if-eqz v3, :cond_b4

    .line 186
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_b6

    .line 187
    :cond_b4
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_b6
    nop

    .line 189
    .local v5, "wildcardRuleLabels":[Ljava/lang/String;
    array-length v6, v1

    array-length v7, v5

    if-le v6, v7, :cond_bd

    .line 190
    move-object v6, v1

    goto :goto_be

    .line 191
    :cond_bd
    move-object v6, v5

    .line 189
    :goto_be
    return-object v6

    .line 120
    .end local v0    # "domainLabelsUtf8Bytes":[[B
    .end local v1    # "exactRuleLabels":[Ljava/lang/String;
    .end local v2    # "exactMatch":Ljava/lang/String;
    .end local v3    # "wildcardMatch":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/String;
    .end local v5    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_bf
    :try_start_bf
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "domainLabels":[Ljava/lang/String;
    throw v0

    .line 123
    .restart local p1    # "domainLabels":[Ljava/lang/String;
    :catchall_c7
    move-exception v0

    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_c7

    throw v0

    return-void
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 310
    .local v0, "resource":Ljava/io/InputStream;
    if-nez v0, :cond_b

    return-void

    .line 312
    :cond_b
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 314
    .local v1, "bufferedSource":Lokio/BufferedSource;
    :try_start_18
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 315
    .local v2, "totalBytes":I
    new-array v3, v2, [B

    .line 316
    .local v3, "publicSuffixListBytes":[B
    invoke-interface {v1, v3}, Lokio/BufferedSource;->readFully([B)V

    .line 318
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 319
    .local v4, "totalExceptionBytes":I
    new-array v5, v4, [B

    .line 320
    .local v5, "publicSuffixExceptionListBytes":[B
    invoke-interface {v1, v5}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3d

    .line 322
    .end local v2    # "totalBytes":I
    .end local v4    # "totalExceptionBytes":I
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 323
    nop

    .line 325
    monitor-enter p0

    .line 326
    :try_start_2f
    iput-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3a

    .line 330
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 331
    return-void

    .line 328
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2

    .line 322
    .end local v3    # "publicSuffixListBytes":[B
    .end local v5    # "publicSuffixExceptionListBytes":[B
    :catchall_3d
    move-exception v2

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private readTheListUninterruptibly()V
    .registers 6

    .line 285
    const/4 v0, 0x0

    .line 289
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 299
    if-eqz v0, :cond_d

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 290
    :cond_d
    return-void

    .line 299
    :catchall_e
    move-exception v1

    goto :goto_25

    .line 293
    :catch_10
    move-exception v1

    .line 294
    .local v1, "e":Ljava/io/IOException;
    :try_start_11
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    .line 299
    if-eqz v0, :cond_24

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 295
    :cond_24
    return-void

    .line 299
    .end local v1    # "e":Ljava/io/IOException;
    :goto_25
    if-eqz v0, :cond_2e

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v1

    .line 291
    :catch_2f
    move-exception v1

    .line 292
    .local v1, "e":Ljava/io/InterruptedIOException;
    const/4 v0, 0x1

    .line 296
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    goto :goto_1
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "domain"    # Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_5a

    .line 81
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "unicodeDomain":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "rule":[Ljava/lang/String;
    array-length v4, v2

    array-length v5, v3

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-ne v4, v5, :cond_21

    aget-object v4, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_21

    .line 86
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_21
    aget-object v4, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2d

    .line 92
    array-length v4, v2

    array-length v5, v3

    sub-int/2addr v4, v5

    .local v4, "firstLabelOffset":I
    goto :goto_32

    .line 95
    .end local v4    # "firstLabelOffset":I
    :cond_2d
    array-length v4, v2

    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    .line 98
    .restart local v4    # "firstLabelOffset":I
    :goto_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v5, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "punycodeLabels":[Ljava/lang/String;
    move v6, v4

    .local v6, "i":I
    :goto_3c
    array-length v7, v1

    if-ge v6, v7, :cond_4c

    .line 101
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 103
    .end local v6    # "i":I
    :cond_4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 78
    .end local v0    # "unicodeDomain":Ljava/lang/String;
    .end local v1    # "punycodeLabels":[Ljava/lang/String;
    .end local v2    # "domainLabels":[Ljava/lang/String;
    .end local v3    # "rule":[Ljava/lang/String;
    .end local v4    # "firstLabelOffset":I
    .end local v5    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    :cond_5a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method setListBytes([B[B)V
    .registers 5
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    .line 335
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 336
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 337
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    return-void
.end method
