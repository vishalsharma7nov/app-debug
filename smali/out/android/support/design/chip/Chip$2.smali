.class Landroid/support/design/chip/Chip$2;
.super Landroid/view/ViewOutlineProvider;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/chip/Chip;->initOutlineProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/Chip;


# direct methods
.method constructor <init>(Landroid/support/design/chip/Chip;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/chip/Chip;

    .line 277
    iput-object p1, p0, Landroid/support/design/chip/Chip$2;->this$0:Landroid/support/design/chip/Chip;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/support/design/chip/Chip$2;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 282
    iget-object v0, p0, Landroid/support/design/chip/Chip$2;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/design/chip/ChipDrawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_16

    .line 284
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 286
    :goto_16
    return-void
.end method
