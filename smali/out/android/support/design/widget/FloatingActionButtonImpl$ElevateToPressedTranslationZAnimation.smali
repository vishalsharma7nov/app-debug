.class Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;
.super Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElevateToPressedTranslationZAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V
    .registers 3

    .line 707
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;Landroid/support/design/widget/FloatingActionButtonImpl$1;)V

    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .registers 3

    .line 711
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget v0, v0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v0, v1

    return v0
.end method
