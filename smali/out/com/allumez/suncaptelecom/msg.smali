.class public Lcom/allumez/suncaptelecom/msg;
.super Ljava/lang/Object;
.source "msg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allumez/suncaptelecom/msg$msg_info;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field msg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allumez/suncaptelecom/msg$msg_info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allumez/suncaptelecom/msg$msg_info;",
            ">;)V"
        }
    .end annotation

    .line 12
    .local p1, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/allumez/suncaptelecom/msg$msg_info;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg;->msg:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/allumez/suncaptelecom/msg$msg_info;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/allumez/suncaptelecom/msg;->msg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMsg(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allumez/suncaptelecom/msg$msg_info;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/allumez/suncaptelecom/msg$msg_info;>;"
    iput-object p1, p0, Lcom/allumez/suncaptelecom/msg;->msg:Ljava/util/ArrayList;

    .line 22
    return-void
.end method
