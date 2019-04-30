.class Landroid/support/v7/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    .line 48
    return-void

    .line 49
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 50
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    goto :goto_24

    .line 51
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    .line 52
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)V

    goto :goto_24

    .line 53
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_24

    .line 54
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)V

    .line 56
    :cond_24
    :goto_24
    return-void
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 60
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    const-string v1, "ResourcesFlusher"

    if-nez v0, :cond_1f

    .line 62
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 63
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 66
    goto :goto_1d

    .line 64
    :catch_17
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 69
    :cond_1f
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_37

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "drawableCache":Ljava/util/Map;
    :try_start_24
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2a} :catch_2c

    move-object v2, v0

    .line 75
    goto :goto_32

    .line 73
    :catch_2c
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_32
    if-eqz v2, :cond_37

    .line 77
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 80
    .end local v2    # "drawableCache":Ljava/util/Map;
    :cond_37
    return-void
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 84
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    const-string v1, "ResourcesFlusher"

    if-nez v0, :cond_1f

    .line 86
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 87
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 90
    goto :goto_1d

    .line 88
    :catch_17
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 94
    :cond_1f
    const/4 v0, 0x0

    .line 95
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_30

    .line 97
    :try_start_24
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 100
    goto :goto_30

    .line 98
    :catch_2a
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_30
    :goto_30
    if-nez v0, :cond_33

    .line 105
    return-void

    .line 108
    :cond_33
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 113
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_1f

    .line 115
    :try_start_7
    const-class v0, Landroid/content/res/Resources;

    const-string v3, "mResourcesImpl"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 116
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 119
    goto :goto_1d

    .line 117
    :catch_17
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 123
    :cond_1f
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_24

    .line 125
    return-void

    .line 128
    :cond_24
    const/4 v3, 0x0

    .line 130
    .local v3, "resourcesImpl":Ljava/lang/Object;
    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_29} :catch_2b

    move-object v3, v0

    .line 133
    goto :goto_31

    .line 131
    :catch_2b
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_31
    if-nez v3, :cond_34

    .line 137
    return-void

    .line 140
    :cond_34
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v0, :cond_52

    .line 142
    :try_start_38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mDrawableCache"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 143
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_49
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_49} :catch_4a

    .line 146
    goto :goto_50

    .line 144
    :catch_4a
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_50
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 150
    :cond_52
    const/4 v0, 0x0

    .line 151
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v1, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_63

    .line 153
    :try_start_57
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_5b} :catch_5d

    move-object v0, v1

    .line 156
    goto :goto_63

    .line 154
    :catch_5d
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_63
    :goto_63
    if-eqz v0, :cond_68

    .line 160
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 162
    :cond_68
    return-void
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .registers 5
    .param p0, "cache"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .line 166
    sget-boolean v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_18

    .line 168
    :try_start_7
    const-string v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_f} :catch_10

    .line 171
    goto :goto_16

    .line 169
    :catch_10
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_16
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 175
    :cond_18
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v0, :cond_1d

    .line 177
    return-void

    .line 180
    :cond_1d
    sget-boolean v3, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v3, :cond_37

    .line 182
    :try_start_21
    const-string v3, "mUnthemedEntries"

    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 184
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_2e} :catch_2f

    .line 187
    goto :goto_35

    .line 185
    :catch_2f
    move-exception v0

    .line 186
    .local v0, "ee":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "ee":Ljava/lang/NoSuchFieldException;
    :goto_35
    sput-boolean v1, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 191
    :cond_37
    sget-object v0, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3c

    .line 193
    return-void

    .line 196
    :cond_3c
    const/4 v1, 0x0

    .line 198
    .local v1, "unthemedEntries":Landroid/util/LongSparseArray;
    nop

    .line 199
    :try_start_3e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;
    :try_end_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_44} :catch_46

    move-object v1, v0

    .line 202
    goto :goto_4c

    .line 200
    :catch_46
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_4c
    if-eqz v1, :cond_51

    .line 205
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 207
    :cond_51
    return-void
.end method
