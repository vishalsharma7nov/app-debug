.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/BufferedSource;)V
    .registers 5
    .param p1, "contentTypeString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentLength"    # J
    .param p4, "source"    # Lokio/BufferedSource;

    .line 33
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 34
    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J

    .line 36
    iput-object p4, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    .line 37
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 40
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    .line 48
    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-object v0
.end method
