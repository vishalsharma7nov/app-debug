.class Lretrofit2/ParameterHandler$1;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/ParameterHandler<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/ParameterHandler;


# direct methods
.method constructor <init>(Lretrofit2/ParameterHandler;)V
    .registers 2
    .param p1, "this$0"    # Lretrofit2/ParameterHandler;

    .line 32
    .local p0, "this":Lretrofit2/ParameterHandler$1;, "Lretrofit2/ParameterHandler$1;"
    iput-object p1, p0, Lretrofit2/ParameterHandler$1;->this$0:Lretrofit2/ParameterHandler;

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Iterable;)V
    .registers 6
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lretrofit2/ParameterHandler$1;, "Lretrofit2/ParameterHandler$1;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    if-nez p2, :cond_3

    return-void

    .line 37
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lretrofit2/ParameterHandler$1;->this$0:Lretrofit2/ParameterHandler;

    invoke-virtual {v2, p1, v1}, Lretrofit2/ParameterHandler;->apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V

    .line 39
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_7

    .line 40
    :cond_17
    return-void
.end method

.method bridge synthetic apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    .local p0, "this":Lretrofit2/ParameterHandler$1;, "Lretrofit2/ParameterHandler$1;"
    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lretrofit2/ParameterHandler$1;->apply(Lretrofit2/RequestBuilder;Ljava/lang/Iterable;)V

    return-void
.end method
