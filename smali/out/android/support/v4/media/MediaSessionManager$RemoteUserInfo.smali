.class public final Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# static fields
.field public static final LEGACY_CONTROLLER:Ljava/lang/String; = "android.media.session.MediaController"


# instance fields
.field mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 3
    .param p1, "remoteUserInfo"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    .line 142
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    goto :goto_18

    .line 146
    :cond_11
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 149
    :goto_18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    if-ne p0, p1, :cond_4

    .line 209
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_4
    instance-of v0, p1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    if-nez v0, :cond_a

    .line 212
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_a
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 172
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
