.class public interface abstract Lcom/allumez/suncaptelecom/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "http://api.hostingfunda.com/suncap/"


# virtual methods
.method public abstract getHeroes()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/allumez/suncaptelecom/msg;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "jsondata.php"
    .end annotation
.end method
