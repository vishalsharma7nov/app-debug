.class Landroid/support/design/chip/Chip$1;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/Chip;
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

    .line 147
    iput-object p1, p0, Landroid/support/design/chip/Chip$1;->this$0:Landroid/support/design/chip/Chip;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 157
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    iget-object v0, p0, Landroid/support/design/chip/Chip$1;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Landroid/support/design/chip/Chip$1;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->requestLayout()V

    .line 153
    iget-object v0, p0, Landroid/support/design/chip/Chip$1;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 154
    return-void
.end method
