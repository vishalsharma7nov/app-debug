.class Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodReference"
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .registers 5
    .param p1, "callType"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    .line 206
    iput-object p2, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 207
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 233
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 234
    return v0

    .line 236
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 240
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;

    .line 241
    .local v2, "that":Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    iget v3, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    iget v4, v2, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 237
    .end local v2    # "that":Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 246
    iget v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method invokeCallback(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 8
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p3, "target"    # Ljava/lang/Object;

    .line 213
    :try_start_0
    iget v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_2a

    .line 221
    :cond_c
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 218
    :cond_18
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    goto :goto_2a

    .line 215
    :cond_22
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_29} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_29} :catch_2c

    .line 216
    nop

    .line 228
    :goto_2a
    nop

    .line 229
    return-void

    .line 226
    :catch_2c
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 224
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_33
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Failed to call observer method"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
