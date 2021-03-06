.class public final Landroid/support/v4/media/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;,
        Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;,
        Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaSessionManager"

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sSessionManager:Landroid/support/v4/media/MediaSessionManager;


# instance fields
.field mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaSessionManager;->DEBUG:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    .line 70
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi28;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi28;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_26

    .line 71
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    .line 72
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi21;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_26

    .line 74
    :cond_1f
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplBase;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    .line 76
    :goto_26
    return-void
.end method

.method public static getSessionManager(Landroid/content/Context;)Landroid/support/v4/media/MediaSessionManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    sget-object v0, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    .line 56
    .local v0, "manager":Landroid/support/v4/media/MediaSessionManager;
    if-nez v0, :cond_1f

    .line 57
    sget-object v1, Landroid/support/v4/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_7
    sget-object v2, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    move-object v0, v2

    .line 59
    if-nez v0, :cond_1a

    .line 60
    new-instance v2, Landroid/support/v4/media/MediaSessionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/media/MediaSessionManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    .line 61
    sget-object v2, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    move-object v0, v2

    .line 63
    :cond_1a
    monitor-exit v1

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2

    .line 65
    :cond_1f
    :goto_1f
    return-object v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;)Z
    .registers 4
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    if-eqz p1, :cond_b

    .line 94
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    iget-object v1, p1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0, v1}, Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;->isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    return v0

    .line 92
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userInfo should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
