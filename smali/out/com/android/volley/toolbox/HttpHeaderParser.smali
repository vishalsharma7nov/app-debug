.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# static fields
.field private static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final RFC1123_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatEpochAsRfc1123(J)Ljava/lang/String;
    .registers 4
    .param p0, "epoch"    # J

    .line 145
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static newRfc1123Formatter()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 150
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 151
    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .registers 30
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .line 49
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    .local v2, "now":J
    iget-object v4, v1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 53
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 54
    .local v5, "serverDate":J
    const-wide/16 v7, 0x0

    .line 55
    .local v7, "lastModified":J
    const-wide/16 v9, 0x0

    .line 56
    .local v9, "serverExpires":J
    const-wide/16 v11, 0x0

    .line 57
    .local v11, "softExpire":J
    const-wide/16 v13, 0x0

    .line 58
    .local v13, "finalExpire":J
    const-wide/16 v15, 0x0

    .line 59
    .local v15, "maxAge":J
    const-wide/16 v17, 0x0

    .line 60
    .local v17, "staleWhileRevalidate":J
    const/4 v0, 0x0

    .line 61
    .local v0, "hasCacheControl":Z
    const/16 v19, 0x0

    .line 63
    .local v19, "mustRevalidate":Z
    const/16 v20, 0x0

    .line 66
    .local v20, "serverEtag":Ljava/lang/String;
    move/from16 v21, v0

    .end local v0    # "hasCacheControl":Z
    .local v21, "hasCacheControl":Z
    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "headerValue":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 68
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v5

    .line 71
    :cond_2b
    move-object/from16 v22, v0

    .end local v0    # "headerValue":Ljava/lang/String;
    .local v22, "headerValue":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-wide/from16 v23, v7

    .end local v7    # "lastModified":J
    .local v23, "lastModified":J
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 72
    .end local v22    # "headerValue":Ljava/lang/String;
    .local v7, "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_b4

    .line 73
    const/4 v8, 0x1

    .line 74
    .end local v21    # "hasCacheControl":Z
    .local v8, "hasCacheControl":Z
    const/4 v0, 0x0

    move/from16 v21, v8

    .end local v8    # "hasCacheControl":Z
    .restart local v21    # "hasCacheControl":Z
    const-string v8, ","

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    move-wide/from16 v25, v17

    move-wide/from16 v16, v15

    move v15, v0

    .end local v17    # "staleWhileRevalidate":J
    .local v15, "i":I
    .local v16, "maxAge":J
    .local v25, "staleWhileRevalidate":J
    :goto_4a
    array-length v0, v8

    if-ge v15, v0, :cond_ad

    .line 76
    aget-object v0, v8, v15

    move-object/from16 v22, v7

    .end local v7    # "headerValue":Ljava/lang/String;
    .restart local v22    # "headerValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "token":Ljava/lang/String;
    const-string v0, "no-cache"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "no-store"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_ab

    .line 79
    :cond_66
    const-string v0, "max-age="

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 81
    const/16 v0, 0x8

    :try_start_70
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_7b

    move-wide/from16 v16, v27

    .line 83
    :goto_7a
    goto :goto_a6

    .line 82
    :catch_7b
    move-exception v0

    goto :goto_7a

    .line 84
    :cond_7d
    const-string v0, "stale-while-revalidate="

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 86
    const/16 v0, 0x17

    :try_start_87
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_92

    move-wide/from16 v25, v27

    .line 88
    :goto_91
    goto :goto_a6

    .line 87
    :catch_92
    move-exception v0

    goto :goto_91

    .line 89
    :cond_94
    const-string v0, "must-revalidate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    const-string v0, "proxy-revalidate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 90
    :cond_a4
    const/16 v19, 0x1

    .line 75
    .end local v7    # "token":Ljava/lang/String;
    :cond_a6
    :goto_a6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v22

    goto :goto_4a

    .line 78
    .restart local v7    # "token":Ljava/lang/String;
    :cond_ab
    :goto_ab
    const/4 v0, 0x0

    return-object v0

    .line 75
    .end local v22    # "headerValue":Ljava/lang/String;
    .local v7, "headerValue":Ljava/lang/String;
    :cond_ad
    move-object/from16 v22, v7

    .end local v7    # "headerValue":Ljava/lang/String;
    .restart local v22    # "headerValue":Ljava/lang/String;
    move-wide/from16 v15, v16

    move-wide/from16 v17, v25

    goto :goto_b6

    .line 72
    .end local v8    # "tokens":[Ljava/lang/String;
    .end local v16    # "maxAge":J
    .end local v22    # "headerValue":Ljava/lang/String;
    .end local v25    # "staleWhileRevalidate":J
    .restart local v7    # "headerValue":Ljava/lang/String;
    .local v15, "maxAge":J
    .restart local v17    # "staleWhileRevalidate":J
    :cond_b4
    move-object/from16 v22, v7

    .line 95
    .end local v7    # "headerValue":Ljava/lang/String;
    .restart local v22    # "headerValue":Ljava/lang/String;
    :goto_b6
    const-string v0, "Expires"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .end local v22    # "headerValue":Ljava/lang/String;
    .restart local v0    # "headerValue":Ljava/lang/String;
    if-eqz v0, :cond_c4

    .line 97
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v9

    .line 100
    :cond_c4
    const-string v7, "Last-Modified"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 101
    if-eqz v0, :cond_d4

    .line 102
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v7

    .end local v23    # "lastModified":J
    .local v7, "lastModified":J
    goto :goto_d6

    .line 101
    .end local v7    # "lastModified":J
    .restart local v23    # "lastModified":J
    :cond_d4
    move-wide/from16 v7, v23

    .line 105
    .end local v23    # "lastModified":J
    .restart local v7    # "lastModified":J
    :goto_d6
    move-object/from16 v22, v0

    .end local v0    # "headerValue":Ljava/lang/String;
    .restart local v22    # "headerValue":Ljava/lang/String;
    const-string v0, "ETag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .end local v20    # "serverEtag":Ljava/lang/String;
    .local v0, "serverEtag":Ljava/lang/String;
    if-eqz v21, :cond_f7

    .line 110
    const-wide/16 v23, 0x3e8

    mul-long v25, v15, v23

    add-long v11, v2, v25

    .line 111
    if-eqz v19, :cond_ed

    move-wide/from16 v23, v11

    goto :goto_f4

    :cond_ed
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->signum(J)I

    mul-long v23, v23, v17

    add-long v23, v11, v23

    :goto_f4
    move-wide/from16 v13, v23

    goto :goto_106

    .line 112
    :cond_f7
    const-wide/16 v23, 0x0

    cmp-long v20, v5, v23

    if-lez v20, :cond_106

    cmp-long v20, v9, v5

    if-ltz v20, :cond_106

    .line 114
    sub-long v23, v9, v5

    add-long v11, v2, v23

    .line 115
    move-wide v13, v11

    .line 118
    :cond_106
    :goto_106
    new-instance v20, Lcom/android/volley/Cache$Entry;

    invoke-direct/range {v20 .. v20}, Lcom/android/volley/Cache$Entry;-><init>()V

    move-object/from16 v23, v20

    .line 119
    .local v23, "entry":Lcom/android/volley/Cache$Entry;
    move-wide/from16 v24, v2

    .end local v2    # "now":J
    .local v24, "now":J
    iget-object v2, v1, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v3, v23

    .end local v23    # "entry":Lcom/android/volley/Cache$Entry;
    .local v3, "entry":Lcom/android/volley/Cache$Entry;
    iput-object v2, v3, Lcom/android/volley/Cache$Entry;->data:[B

    .line 120
    iput-object v0, v3, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 121
    iput-wide v11, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 122
    iput-wide v13, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 123
    iput-wide v5, v3, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 124
    iput-wide v7, v3, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 125
    iput-object v4, v3, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 126
    iget-object v2, v1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    iput-object v2, v3, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 128
    return-object v3
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 184
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 165
    const/4 v1, 0x0

    const-string v2, ";"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "params":[Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_12
    array-length v4, v2

    if-ge v3, v4, :cond_36

    .line 167
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "pair":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_33

    .line 169
    aget-object v5, v4, v1

    const-string v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 170
    const/4 v1, 0x1

    aget-object v1, v4, v1

    return-object v1

    .line 166
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 176
    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_36
    return-object p1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .registers 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 136
    :catch_d
    move-exception v0

    .line 138
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Unable to parse dateStr: %s, falling back to 0"

    invoke-static {v0, v2, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method static toAllHeaderList(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 202
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/android/volley/Header;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_11

    .line 206
    :cond_32
    return-object v0
.end method

.method static toHeaderMap(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 195
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 196
    .local v2, "header":Lcom/android/volley/Header;
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v2    # "header":Lcom/android/volley/Header;
    goto :goto_b

    .line 198
    :cond_23
    return-object v0
.end method
