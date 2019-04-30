.class final Lretrofit2/ServiceMethod$Builder;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field callAdapter:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field contentType:Lokhttp3/MediaType;

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lokhttp3/Headers;

.field httpMethod:Ljava/lang/String;

.field isFormEncoded:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field responseType:Ljava/lang/reflect/Type;

.field final retrofit:Lretrofit2/Retrofit;


# direct methods
.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .registers 4
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 156
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 158
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 159
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 160
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 161
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    .line 162
    return-void
.end method

.method private createCallAdapter()Lretrofit2/CallAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/CallAdapter<",
            "TT;TR;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 228
    .local v0, "returnType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_34

    .line 232
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2b

    .line 235
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 238
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_18
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v4, v0, v1}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object v2

    .line 239
    :catch_1f
    move-exception v4

    .line 240
    .local v4, "e":Ljava/lang/RuntimeException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "Unable to create call adapter for %s"

    invoke-direct {p0, v4, v3, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 233
    .end local v1    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_2b
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Service methods cannot return void."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 229
    :cond_34
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private createResponseConverter()Lretrofit2/Converter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .line 737
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 739
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_6
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    .line 740
    :catch_f
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    const-string v3, "Unable to create converter for %s"

    invoke-direct {p0, v1, v3, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 746
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 750
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    for method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 753
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 755
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 751
    return-object v0
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 6
    .param p1, "p"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 764
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "p"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 760
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 12
    .param p1, "headers"    # [Ljava/lang/String;

    .line 313
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 314
    .local v0, "builder":Lokhttp3/Headers$Builder;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_5a

    aget-object v4, p1, v3

    .line 315
    .local v4, "header":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 316
    .local v5, "colon":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4f

    if-eqz v5, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_4f

    .line 320
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "headerName":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "headerValue":Ljava/lang/String;
    const-string v9, "Content-Type"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 323
    invoke-static {v8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    .line 324
    .local v9, "type":Lokhttp3/MediaType;
    if-eqz v9, :cond_3e

    .line 327
    iput-object v9, p0, Lretrofit2/ServiceMethod$Builder;->contentType:Lokhttp3/MediaType;

    .line 328
    .end local v9    # "type":Lokhttp3/MediaType;
    goto :goto_4c

    .line 325
    .restart local v9    # "type":Lokhttp3/MediaType;
    :cond_3e
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v2

    const-string v2, "Malformed content type: %s"

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 329
    .end local v9    # "type":Lokhttp3/MediaType;
    :cond_49
    invoke-virtual {v0, v6, v8}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 314
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "colon":I
    .end local v6    # "headerName":Ljava/lang/String;
    .end local v8    # "headerValue":Ljava/lang/String;
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 317
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v5    # "colon":I
    :cond_4f
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 332
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "colon":I
    :cond_5a
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "hasBody"    # Z

    .line 285
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_48

    .line 289
    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    .line 290
    iput-boolean p3, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    .line 292
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    return-void

    .line 297
    :cond_11
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 298
    .local v0, "question":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3f

    .line 300
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "queryParams":Ljava/lang/String;
    sget-object v4, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 302
    .local v4, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_3f

    .line 303
    :cond_34
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-direct {p0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 308
    .end local v3    # "queryParams":Ljava/lang/String;
    .end local v4    # "queryParamMatcher":Ljava/util/regex/Matcher;
    :cond_3f
    :goto_3f
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    .line 309
    invoke-static {p2}, Lretrofit2/ServiceMethod;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    .line 310
    return-void

    .line 286
    .end local v0    # "question":I
    :cond_48
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    const-string v0, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-direct {p0, v0, v3}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .registers 6
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .line 245
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    instance-of v0, p1, Lretrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 246
    move-object v0, p1

    check-cast v0, Lretrofit2/http/DELETE;

    invoke-interface {v0}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DELETE"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ed

    .line 247
    :cond_13
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_25

    .line 248
    move-object v0, p1

    check-cast v0, Lretrofit2/http/GET;

    invoke-interface {v0}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ed

    .line 249
    :cond_25
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_4a

    .line 250
    move-object v0, p1

    check-cast v0, Lretrofit2/http/HEAD;

    invoke-interface {v0}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    const-class v0, Ljava/lang/Void;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto/16 :goto_ed

    .line 252
    :cond_41
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "HEAD method must use Void as response type."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 254
    :cond_4a
    instance-of v0, p1, Lretrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_5d

    .line 255
    move-object v0, p1

    check-cast v0, Lretrofit2/http/PATCH;

    invoke-interface {v0}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PATCH"

    invoke-direct {p0, v1, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ed

    .line 256
    :cond_5d
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_6f

    .line 257
    move-object v0, p1

    check-cast v0, Lretrofit2/http/POST;

    invoke-interface {v0}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-direct {p0, v1, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ed

    .line 258
    :cond_6f
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_81

    .line 259
    move-object v0, p1

    check-cast v0, Lretrofit2/http/PUT;

    invoke-interface {v0}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    invoke-direct {p0, v1, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ed

    .line 260
    :cond_81
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_92

    .line 261
    move-object v0, p1

    check-cast v0, Lretrofit2/http/OPTIONS;

    invoke-interface {v0}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPTIONS"

    invoke-direct {p0, v2, v0, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_ed

    .line 262
    :cond_92
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_a9

    .line 263
    move-object v0, p1

    check-cast v0, Lretrofit2/http/HTTP;

    .line 264
    .local v0, "http":Lretrofit2/http/HTTP;
    invoke-interface {v0}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .end local v0    # "http":Lretrofit2/http/HTTP;
    goto :goto_ed

    :cond_a9
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_c7

    .line 266
    move-object v0, p1

    check-cast v0, Lretrofit2/http/Headers;

    invoke-interface {v0}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "headersToParse":[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_be

    .line 270
    invoke-direct {p0, v0}, Lretrofit2/ServiceMethod$Builder;->parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/ServiceMethod$Builder;->headers:Lokhttp3/Headers;

    .line 271
    .end local v0    # "headersToParse":[Ljava/lang/String;
    goto :goto_ed

    .line 268
    .restart local v0    # "headersToParse":[Ljava/lang/String;
    :cond_be
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@Headers annotation is empty."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 271
    .end local v0    # "headersToParse":[Ljava/lang/String;
    :cond_c7
    instance-of v0, p1, Lretrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_db

    .line 272
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_d4

    .line 275
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    goto :goto_ed

    .line 273
    :cond_d4
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 276
    :cond_db
    instance-of v0, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_ed

    .line 277
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_e6

    .line 280
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    goto :goto_ed

    .line 278
    :cond_e6
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 282
    :cond_ed
    :goto_ed
    return-void
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .registers 10
    .param p1, "p"    # I
    .param p2, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    const/4 v0, 0x0

    .line 338
    .local v0, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    array-length v1, p3

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .end local v0    # "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    .local v3, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :goto_5
    if-ge v0, v1, :cond_1f

    aget-object v4, p3, v0

    .line 339
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, p2, p3, v4}, Lretrofit2/ServiceMethod$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v5

    .line 342
    .local v5, "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-nez v5, :cond_10

    .line 343
    goto :goto_13

    .line 346
    :cond_10
    if-nez v3, :cond_16

    .line 350
    move-object v3, v5

    .line 338
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 347
    .restart local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_16
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multiple Retrofit annotations found, only one allowed."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 353
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_1f
    if-eqz v3, :cond_22

    .line 357
    return-object v3

    .line 354
    :cond_22
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "No Retrofit annotation found."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    return-void
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .registers 15
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    instance-of v0, p4, Lretrofit2/http/Url;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6f

    .line 363
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_66

    .line 366
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotPath:Z

    if-nez v0, :cond_5f

    .line 369
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v0, :cond_56

    .line 372
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 376
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    .line 378
    const-class v0, Lokhttp3/HttpUrl;

    if-eq p2, v0, :cond_43

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_43

    const-class v0, Ljava/net/URI;

    if-eq p2, v0, :cond_43

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_3a

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.Uri"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_43

    .line 384
    :cond_3a
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 382
    :cond_43
    :goto_43
    new-instance v0, Lretrofit2/ParameterHandler$RelativeUrl;

    invoke-direct {v0}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>()V

    return-object v0

    .line 373
    :cond_49
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 370
    :cond_56
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "A @Url parameter must not come after a @Query"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 367
    :cond_5f
    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 364
    :cond_66
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Multiple @Url method annotations found."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 388
    :cond_6f
    instance-of v0, p4, Lretrofit2/http/Path;

    if-eqz v0, :cond_b8

    .line 389
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v0, :cond_af

    .line 392
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_a8

    .line 395
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 398
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotPath:Z

    .line 400
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Path;

    .line 401
    .local v0, "path":Lretrofit2/http/Path;
    invoke-interface {v0}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lretrofit2/ServiceMethod$Builder;->validatePathName(ILjava/lang/String;)V

    .line 404
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v2, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 405
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Path;

    invoke-interface {v0}, Lretrofit2/http/Path;->encoded()Z

    move-result v4

    invoke-direct {v3, v1, v2, v4}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v3

    .line 396
    .end local v0    # "path":Lretrofit2/http/Path;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_9b
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 393
    :cond_a8
    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 390
    :cond_af
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "A @Path parameter must not come after a @Query."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 407
    :cond_b8
    instance-of v0, p4, Lretrofit2/http/Query;

    const-string v1, "<String>)"

    const-string v4, " must include generic type (e.g., "

    if-eqz v0, :cond_142

    .line 408
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Query;

    .line 409
    .local v0, "query":Lretrofit2/http/Query;
    invoke-interface {v0}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v0}, Lretrofit2/http/Query;->encoded()Z

    move-result v6

    .line 412
    .local v6, "encoded":Z
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .line 413
    .local v7, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 414
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 415
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f4

    .line 421
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 422
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 423
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 424
    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 425
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v4, v5, v3, v6}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Query;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 416
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 416
    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 426
    :cond_118
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_136

    .line 427
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 428
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 429
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 430
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v3, v5, v2, v6}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$Query;->array()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 432
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_136
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 433
    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 434
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v2, v5, v1, v6}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v2

    .line 437
    .end local v0    # "query":Lretrofit2/http/Query;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "encoded":Z
    .end local v7    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_142
    instance-of v0, p4, Lretrofit2/http/QueryName;

    if-eqz v0, :cond_1c4

    .line 438
    move-object v0, p4

    check-cast v0, Lretrofit2/http/QueryName;

    .line 439
    .local v0, "query":Lretrofit2/http/QueryName;
    invoke-interface {v0}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v5

    .line 441
    .local v5, "encoded":Z
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 442
    .local v6, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 443
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 444
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_176

    .line 450
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 451
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 452
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 453
    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 454
    .restart local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v4, v3, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$QueryName;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 445
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 445
    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 455
    :cond_19a
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 456
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 457
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 458
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 459
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v3, v2, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$QueryName;->array()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 461
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_1b8
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 462
    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 463
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v1, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    return-object v2

    .line 466
    .end local v0    # "query":Lretrofit2/http/QueryName;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v5    # "encoded":Z
    .end local v6    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c4
    instance-of v0, p4, Lretrofit2/http/QueryMap;

    const-string v5, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_22a

    .line 467
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 468
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_221

    .line 471
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 472
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_21a

    .line 475
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 476
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 477
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_202

    .line 480
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 481
    .local v2, "valueType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 482
    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 484
    .local v3, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$QueryMap;

    move-object v7, p4

    check-cast v7, Lretrofit2/http/QueryMap;

    invoke-interface {v7}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Lretrofit2/Converter;Z)V

    return-object v6

    .line 478
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    .end local v3    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@QueryMap keys must be of type String: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 473
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_21a
    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 469
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_221
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "@QueryMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 486
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22a
    instance-of v0, p4, Lretrofit2/http/Header;

    if-eqz v0, :cond_2aa

    .line 487
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Header;

    .line 488
    .local v0, "header":Lretrofit2/http/Header;
    invoke-interface {v0}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 491
    .local v5, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_280

    .line 492
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_25c

    .line 498
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 499
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 500
    .local v3, "iterableType":Ljava/lang/reflect/Type;
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 501
    invoke-virtual {v4, v3, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    .line 502
    .local v4, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v6, v2, v4}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v6}, Lretrofit2/ParameterHandler$Header;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v6

    return-object v6

    .line 493
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "iterableType":Ljava/lang/reflect/Type;
    .end local v4    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_25c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 493
    invoke-direct {p0, p1, v1, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 503
    :cond_280
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_29e

    .line 504
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 505
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 506
    invoke-virtual {v3, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 507
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v4, v2, v3}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Header;->array()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 509
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_29e
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 510
    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 511
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v3, v2, v1}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    return-object v3

    .line 514
    .end local v0    # "header":Lretrofit2/http/Header;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2aa
    instance-of v0, p4, Lretrofit2/http/HeaderMap;

    if-eqz v0, :cond_307

    .line 515
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 516
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2fe

    .line 519
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 520
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2f7

    .line 523
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 524
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 525
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_2df

    .line 528
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 529
    .local v2, "valueType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 530
    invoke-virtual {v3, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 532
    .local v3, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$HeaderMap;

    invoke-direct {v6, v3}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Lretrofit2/Converter;)V

    return-object v6

    .line 526
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    .end local v3    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_2df
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@HeaderMap keys must be of type String: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 521
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_2f7
    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 517
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_2fe
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "@HeaderMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 534
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_307
    instance-of v0, p4, Lretrofit2/http/Field;

    if-eqz v0, :cond_39a

    .line 535
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_391

    .line 538
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Field;

    .line 539
    .local v0, "field":Lretrofit2/http/Field;
    invoke-interface {v0}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v0}, Lretrofit2/http/Field;->encoded()Z

    move-result v6

    .line 542
    .local v6, "encoded":Z
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    .line 544
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 545
    .local v2, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/Iterable;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_367

    .line 546
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_343

    .line 552
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 553
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 554
    .local v3, "iterableType":Ljava/lang/reflect/Type;
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 555
    invoke-virtual {v4, v3, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    .line 556
    .local v4, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v7, v5, v4, v6}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler$Field;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 547
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "iterableType":Ljava/lang/reflect/Type;
    .end local v4    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 547
    invoke-direct {p0, p1, v1, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 557
    :cond_367
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_385

    .line 558
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 559
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 560
    invoke-virtual {v3, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 561
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v4, v5, v3, v6}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Field;->array()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 563
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_385
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 564
    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 565
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v3, v5, v1, v6}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v3

    .line 536
    .end local v0    # "field":Lretrofit2/http/Field;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v2    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "encoded":Z
    :cond_391
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@Field parameters can only be used with form encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 568
    :cond_39a
    instance-of v0, p4, Lretrofit2/http/FieldMap;

    if-eqz v0, :cond_40d

    .line 569
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_404

    .line 572
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 573
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3fb

    .line 576
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 577
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3f4

    .line 581
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 582
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 583
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_3dc

    .line 586
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 587
    .local v3, "valueType":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 588
    invoke-virtual {v6, v3, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 590
    .local v6, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    .line 591
    new-instance v2, Lretrofit2/ParameterHandler$FieldMap;

    move-object v7, p4

    check-cast v7, Lretrofit2/http/FieldMap;

    invoke-interface {v7}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v7

    invoke-direct {v2, v6, v7}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Lretrofit2/Converter;Z)V

    return-object v2

    .line 584
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    .end local v6    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_3dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@FieldMap keys must be of type String: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 578
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_3f4
    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 574
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_3fb
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "@FieldMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 570
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_404
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@FieldMap parameters can only be used with form encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 593
    :cond_40d
    instance-of v0, p4, Lretrofit2/http/Part;

    if-eqz v0, :cond_58f

    .line 594
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_586

    .line 597
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Part;

    .line 598
    .local v0, "part":Lretrofit2/http/Part;
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 600
    invoke-interface {v0}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, "partName":Ljava/lang/String;
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 602
    .local v6, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4ad

    .line 603
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v7, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v2, :cond_47b

    .line 604
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_457

    .line 610
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 611
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 612
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    const-class v4, Lokhttp3/MultipartBody$Part;

    invoke-static {v2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_450

    .line 616
    sget-object v3, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$RawPart;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v3

    return-object v3

    .line 613
    :cond_450
    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v7, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 605
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    :cond_457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 605
    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 617
    :cond_47b
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_49b

    .line 618
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 619
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_494

    .line 623
    sget-object v2, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$RawPart;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    return-object v2

    .line 620
    :cond_494
    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v7, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 624
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49b
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4a6

    .line 625
    sget-object v1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    return-object v1

    .line 627
    :cond_4a6
    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v7, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 631
    :cond_4ad
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x2

    const-string v8, "Content-Transfer-Encoding"

    aput-object v8, v7, v2

    const/4 v2, 0x3

    .line 633
    invoke-interface {v0}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 632
    invoke-static {v7}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    .line 635
    .local v2, "headers":Lokhttp3/Headers;
    const-class v7, Ljava/lang/Iterable;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    const-string v8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v7, :cond_53a

    .line 636
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_516

    .line 642
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 643
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 644
    .local v4, "iterableType":Ljava/lang/reflect/Type;
    const-class v7, Lokhttp3/MultipartBody$Part;

    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_50f

    .line 648
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v7, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 649
    invoke-virtual {v3, v4, p3, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 650
    .local v3, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v7, v2, v3}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler$Part;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 645
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_50f
    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v8, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 637
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "iterableType":Ljava/lang/reflect/Type;
    :cond_516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 637
    invoke-direct {p0, p1, v1, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 651
    :cond_53a
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_569

    .line 652
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 653
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_562

    .line 657
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 658
    invoke-virtual {v3, v1, p3, v4}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 659
    .restart local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v4, v2, v3}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v4}, Lretrofit2/ParameterHandler$Part;->array()Lretrofit2/ParameterHandler;

    move-result-object v4

    return-object v4

    .line 654
    .end local v3    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_562
    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v8, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 660
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_569
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_57f

    .line 664
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 665
    invoke-virtual {v1, p2, p3, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 666
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v3, v2, v1}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    return-object v3

    .line 661
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_57f
    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v8, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 595
    .end local v0    # "part":Lretrofit2/http/Part;
    .end local v2    # "headers":Lokhttp3/Headers;
    .end local v5    # "partName":Ljava/lang/String;
    .end local v6    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_586
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@Part parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 670
    :cond_58f
    instance-of v0, p4, Lretrofit2/http/PartMap;

    if-eqz v0, :cond_619

    .line 671
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_610

    .line 674
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 675
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 676
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_607

    .line 679
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 680
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_600

    .line 683
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 685
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 686
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_5e8

    .line 690
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 691
    .local v2, "valueType":Ljava/lang/reflect/Type;
    const-class v6, Lokhttp3/MultipartBody$Part;

    invoke-static {v2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5df

    .line 696
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 697
    invoke-virtual {v3, v2, p3, v6}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 699
    .local v3, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    move-object v6, p4

    check-cast v6, Lretrofit2/http/PartMap;

    .line 700
    .local v6, "partMap":Lretrofit2/http/PartMap;
    new-instance v7, Lretrofit2/ParameterHandler$PartMap;

    invoke-interface {v6}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Lretrofit2/ParameterHandler$PartMap;-><init>(Lretrofit2/Converter;Ljava/lang/String;)V

    return-object v7

    .line 692
    .end local v3    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v6    # "partMap":Lretrofit2/http/PartMap;
    :cond_5df
    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-direct {p0, p1, v6, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 687
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    :cond_5e8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@PartMap keys must be of type String: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 681
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_600
    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 677
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_607
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "@PartMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 672
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_610
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@PartMap parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 702
    :cond_619
    instance-of v0, p4, Lretrofit2/http/Body;

    if-eqz v0, :cond_658

    .line 703
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_64f

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_64f

    .line 707
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v0, :cond_646

    .line 713
    :try_start_629
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0
    :try_end_631
    .catch Ljava/lang/RuntimeException; {:try_start_629 .. :try_end_631} :catch_63a

    .line 717
    .local v0, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    nop

    .line 718
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    .line 719
    new-instance v1, Lretrofit2/ParameterHandler$Body;

    invoke-direct {v1, v0}, Lretrofit2/ParameterHandler$Body;-><init>(Lretrofit2/Converter;)V

    return-object v1

    .line 714
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :catch_63a
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/RuntimeException;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string v2, "Unable to create @Body converter for %s"

    invoke-direct {p0, v0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 708
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_646
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Multiple @Body method annotations found."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 704
    :cond_64f
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 722
    :cond_658
    const/4 v0, 0x0

    return-object v0
.end method

.method private validatePathName(ILjava/lang/String;)V
    .registers 7
    .param p1, "p"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 726
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    sget-object v0, Lretrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_27

    .line 731
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 734
    return-void

    .line 732
    :cond_18
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 727
    :cond_27
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 728
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    .line 727
    const-string v1, "@Path parameter name must match %s. Found: %s"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public build()Lretrofit2/ServiceMethod;
    .registers 8

    .line 165
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    invoke-direct {p0}, Lretrofit2/ServiceMethod$Builder;->createCallAdapter()Lretrofit2/CallAdapter;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->callAdapter:Lretrofit2/CallAdapter;

    .line 166
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v0}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 167
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    const-class v1, Lretrofit2/Response;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_ed

    const-class v1, Lokhttp3/Response;

    if-eq v0, v1, :cond_ed

    .line 172
    invoke-direct {p0}, Lretrofit2/ServiceMethod$Builder;->createResponseConverter()Lretrofit2/Converter;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->responseConverter:Lretrofit2/Converter;

    .line 174
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 175
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v4}, Lretrofit2/ServiceMethod$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    .line 174
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 178
    :cond_2d
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_e4

    .line 182
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v0, :cond_50

    .line 183
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_47

    .line 187
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_3e

    goto :goto_50

    .line 188
    :cond_3e
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 184
    :cond_47
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 193
    :cond_50
    :goto_50
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 194
    .local v0, "parameterCount":I
    new-array v1, v0, [Lretrofit2/ParameterHandler;

    iput-object v1, p0, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 195
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_58
    const/4 v3, 0x1

    if-ge v1, v0, :cond_8a

    .line 196
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    .line 197
    .local v4, "parameterType":Ljava/lang/reflect/Type;
    invoke-static {v4}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 202
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    .line 203
    .local v3, "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v3, :cond_76

    .line 207
    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    invoke-direct {p0, v1, v4, v3}, Lretrofit2/ServiceMethod$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v6

    aput-object v6, v5, v1

    .line 195
    .end local v3    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v4    # "parameterType":Ljava/lang/reflect/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 204
    .restart local v3    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v4    # "parameterType":Ljava/lang/reflect/Type;
    :cond_76
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "No Retrofit annotation found."

    invoke-direct {p0, v1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 198
    .end local v3    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_7f
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 210
    .end local v1    # "p":I
    .end local v4    # "parameterType":Ljava/lang/reflect/Type;
    :cond_8a
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v1, :cond_a0

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-eqz v1, :cond_93

    goto :goto_a0

    .line 211
    :cond_93
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 213
    :cond_a0
    :goto_a0
    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v1, :cond_ba

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v1, :cond_ba

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v1, :cond_ba

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v1, :cond_b1

    goto :goto_ba

    .line 214
    :cond_b1
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 216
    :cond_ba
    :goto_ba
    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v1, :cond_cc

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    if-eqz v1, :cond_c3

    goto :goto_cc

    .line 217
    :cond_c3
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 219
    :cond_cc
    :goto_cc
    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v1, :cond_de

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    if-eqz v1, :cond_d5

    goto :goto_de

    .line 220
    :cond_d5
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 223
    :cond_de
    :goto_de
    new-instance v1, Lretrofit2/ServiceMethod;

    invoke-direct {v1, p0}, Lretrofit2/ServiceMethod;-><init>(Lretrofit2/ServiceMethod$Builder;)V

    return-object v1

    .line 179
    .end local v0    # "parameterCount":I
    :cond_e4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 168
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 169
    invoke-static {v1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 168
    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    return-void
.end method
