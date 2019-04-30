.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = "cached_font_"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 5
    .param p1, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p2, "style"    # I

    .line 124
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    new-instance v1, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;

    invoke-direct {v1, p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$2;-><init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v0, p2, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    return-object v0
.end method

.method private static findBestFont([Ljava/lang/Object;ILandroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .registers 14
    .param p1, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    .local p0, "fonts":[Ljava/lang/Object;, "[TT;"
    .local p2, "extractor":Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;, "Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor<TT;>;"
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    const/16 v0, 0x190

    goto :goto_9

    :cond_7
    const/16 v0, 0x2bc

    .line 53
    .local v0, "targetWeight":I
    :goto_9
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 55
    .local v1, "isTargetItalic":Z
    :goto_12
    const/4 v4, 0x0

    .line 56
    .local v4, "best":Ljava/lang/Object;, "TT;"
    const v5, 0x7fffffff

    .line 58
    .local v5, "bestScore":I
    array-length v6, p0

    move v7, v5

    move-object v5, v4

    const/4 v4, 0x0

    .end local v4    # "best":Ljava/lang/Object;, "TT;"
    .local v5, "best":Ljava/lang/Object;, "TT;"
    .local v7, "bestScore":I
    :goto_1a
    if-ge v4, v6, :cond_3c

    aget-object v8, p0, v4

    .line 59
    .local v8, "font":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v8}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;->getWeight(Ljava/lang/Object;)I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    .line 60
    invoke-interface {p2, v8}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;->isItalic(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v1, :cond_31

    const/4 v10, 0x0

    goto :goto_32

    :cond_31
    const/4 v10, 0x1

    :goto_32
    add-int/2addr v9, v10

    .line 62
    .local v9, "score":I
    if-eqz v5, :cond_37

    if-le v7, v9, :cond_39

    .line 63
    :cond_37
    move-object v5, v8

    .line 64
    move v7, v9

    .line 58
    .end local v8    # "font":Ljava/lang/Object;, "TT;"
    .end local v9    # "score":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 67
    :cond_3c
    return-object v5
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 140
    invoke-direct {p0, p2, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    .line 141
    .local v0, "best":Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    if-nez v0, :cond_8

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 144
    :cond_8
    nop

    .line 145
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {p1, p3, v1, v2, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .line 108
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 109
    return-object v1

    .line 111
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 112
    .local v0, "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    const/4 v2, 0x0

    .line 114
    .local v2, "is":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 115
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_25
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    .line 119
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_20
    move-exception v1

    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 116
    :catch_25
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 119
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;

    .line 86
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 88
    return-object v1

    .line 91
    :cond_8
    :try_start_8
    invoke-static {v0, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_24
    .catchall {:try_start_8 .. :try_end_c} :catchall_1f

    if-nez v2, :cond_13

    .line 92
    nop

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 94
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1b} :catch_24
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1f

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1

    .line 95
    :catch_24
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/RuntimeException;
    nop

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 154
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 156
    return-object v1

    .line 159
    :cond_8
    :try_start_8
    invoke-static {v0, p2, p3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_24
    .catchall {:try_start_8 .. :try_end_c} :catchall_1f

    if-nez v2, :cond_13

    .line 160
    nop

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 162
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1b} :catch_24
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1f

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1

    .line 163
    :catch_24
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/RuntimeException;
    nop

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1
.end method

.method protected findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .registers 4
    .param p1, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .param p2, "style"    # I

    .line 71
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroid/support/v4/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {p1, p2, v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroid/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method
