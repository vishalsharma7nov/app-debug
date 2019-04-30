.class public Lcom/allumez/suncaptelecom/msg$msg_info;
.super Ljava/lang/Object;
.source "msg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allumez/suncaptelecom/msg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "msg_info"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field latitude:Ljava/lang/String;

.field longitude:Ljava/lang/String;

.field final synthetic this$0:Lcom/allumez/suncaptelecom/msg;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/allumez/suncaptelecom/msg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/msg;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "longitude"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->this$0:Lcom/allumez/suncaptelecom/msg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->id:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->latitude:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->longitude:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->username:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "latitude"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->latitude:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "longitude"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->longitude:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg$msg_info;->username:Ljava/lang/String;

    .line 40
    return-void
.end method
