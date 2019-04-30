.class public Landroid/support/design/chip/Chip;
.super Landroid/support/v7/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Landroid/support/design/chip/ChipDrawable$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final CLOSE_ICON_VIRTUAL_ID:I = 0x0

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final SELECTED_STATE:[I

.field private static final TAG:Ljava/lang/String; = "Chip"


# instance fields
.field private chipDrawable:Landroid/support/design/chip/ChipDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private focusedVirtualView:I

.field private final fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/design/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 165
    sget v0, Landroid/support/design/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Landroid/support/design/chip/Chip$1;

    invoke-direct {v0, p0}, Landroid/support/design/chip/Chip$1;-><init>(Landroid/support/design/chip/Chip;)V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    .line 170
    invoke-direct {p0, p2}, Landroid/support/design/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 171
    sget v0, Landroid/support/design/R$style;->Widget_MaterialComponents_Chip_Action:I

    .line 172
    invoke-static {p1, p2, p3, v0}, Landroid/support/design/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;

    move-result-object v0

    .line 174
    .local v0, "drawable":Landroid/support/design/chip/ChipDrawable;
    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 175
    new-instance v1, Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-direct {v1, p0, p0}, Landroid/support/design/chip/Chip$ChipTouchHelper;-><init>(Landroid/support/design/chip/Chip;Landroid/support/design/chip/Chip;)V

    iput-object v1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    .line 176
    iget-object v1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 178
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->initOutlineProvider()V

    .line 180
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, v1}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setShouldDrawText(Z)V

    .line 184
    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    invoke-virtual {p0, v1}, Landroid/support/design/chip/Chip;->setIncludeFontPadding(Z)V

    .line 188
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 189
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->updateTextPaintDrawState(Landroid/support/design/resources/TextAppearance;)V

    .line 192
    :cond_5e
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->setSingleLine()V

    .line 195
    const v1, 0x800013

    invoke-virtual {p0, v1}, Landroid/support/design/chip/Chip;->setGravity(I)V

    .line 197
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->updatePaddingInternal()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 116
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/chip/Chip;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 116
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/chip/Chip;)Landroid/graphics/RectF;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 116
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/chip/Chip;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/chip/Chip;

    .line 116
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Rect;
    .registers 1

    .line 116
    sget-object v0, Landroid/support/design/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    return-object v0
.end method

.method private applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .registers 2
    .param p1, "chipDrawable"    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 327
    invoke-virtual {p1, p0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    .line 328
    return-void
.end method

.method private calculateTextOffsetFromStart(Landroid/support/design/chip/ChipDrawable;)F
    .registers 4
    .param p1, "chipDrawable"    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 362
    nop

    .line 363
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getChipStartPadding()F

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getTextStartPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 364
    .local v0, "offsetFromStart":F
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_16

    .line 365
    return v0

    .line 367
    :cond_16
    neg-float v1, v0

    return v1
.end method

.method private createCloseIconDrawableState()[I
    .registers 5

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 883
    add-int/lit8 v0, v0, 0x1

    .line 885
    :cond_9
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v1, :cond_f

    .line 886
    add-int/lit8 v0, v0, 0x1

    .line 888
    :cond_f
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v1, :cond_15

    .line 889
    add-int/lit8 v0, v0, 0x1

    .line 891
    :cond_15
    iget-boolean v1, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v1, :cond_1b

    .line 892
    add-int/lit8 v0, v0, 0x1

    .line 894
    :cond_1b
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 895
    add-int/lit8 v0, v0, 0x1

    .line 898
    :cond_23
    new-array v1, v0, [I

    .line 899
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    .line 901
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 902
    const v3, 0x101009e

    aput v3, v1, v2

    .line 903
    add-int/lit8 v2, v2, 0x1

    .line 905
    :cond_33
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v3, :cond_3e

    .line 906
    const v3, 0x101009c

    aput v3, v1, v2

    .line 907
    add-int/lit8 v2, v2, 0x1

    .line 909
    :cond_3e
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v3, :cond_49

    .line 910
    const v3, 0x1010367

    aput v3, v1, v2

    .line 911
    add-int/lit8 v2, v2, 0x1

    .line 913
    :cond_49
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v3, :cond_54

    .line 914
    const v3, 0x10100a7

    aput v3, v1, v2

    .line 915
    add-int/lit8 v2, v2, 0x1

    .line 917
    :cond_54
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 918
    const v3, 0x10100a1

    aput v3, v1, v2

    .line 919
    add-int/lit8 v2, v2, 0x1

    .line 921
    :cond_61
    return-object v1
.end method

.method private ensureFocus()V
    .registers 3

    .line 818
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_a

    .line 819
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 821
    :cond_a
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .registers 3

    .line 929
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 931
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 933
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    iget-object v1, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 936
    :cond_12
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .registers 7

    .line 940
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 941
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 942
    iget-object v1, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getTextAppearance()Landroid/support/design/resources/TextAppearance;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1166
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private handleAccessibilityExit(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 682
    const-string v0, "Unable to send Accessibility Exit event"

    const-string v1, "Chip"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne v2, v4, :cond_5c

    .line 684
    :try_start_d
    const-class v2, Landroid/support/v4/widget/ExploreByTouchHelper;

    const-string v4, "mHoveredVirtualViewId"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 685
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 686
    iget-object v5, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 688
    .local v5, "mHoveredVirtualViewId":I
    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_48

    .line 689
    const-class v7, Landroid/support/v4/widget/ExploreByTouchHelper;

    const-string v8, "updateHoveredVirtualView"

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    .line 690
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 691
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 692
    iget-object v8, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_47} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_47} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_47} :catch_4e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_47} :catch_49

    .line 693
    return v4

    .line 688
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "mHoveredVirtualViewId":I
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_48
    goto :goto_5c

    .line 704
    :catch_49
    move-exception v2

    .line 706
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 701
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4e
    move-exception v2

    .line 703
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_5c

    .line 698
    :catch_53
    move-exception v2

    .line 700
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_5c

    .line 695
    :catch_58
    move-exception v2

    .line 697
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_5c
    :goto_5c
    return v3
.end method

.method private hasCloseIcon()Z
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private initOutlineProvider()V
    .registers 3

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 276
    new-instance v0, Landroid/support/design/chip/Chip$2;

    invoke-direct {v0, p0}, Landroid/support/design/chip/Chip$2;-><init>(Landroid/support/design/chip/Chip;)V

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 289
    :cond_e
    return-void
.end method

.method private moveFocus(Z)Z
    .registers 5
    .param p1, "positive"    # Z

    .line 801
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->ensureFocus()V

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "focusChanged":Z
    const/4 v1, -0x1

    if-eqz p1, :cond_11

    .line 804
    iget v2, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-ne v2, v1, :cond_19

    .line 805
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 806
    const/4 v0, 0x1

    goto :goto_19

    .line 809
    :cond_11
    iget v2, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v2, :cond_19

    .line 810
    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 811
    const/4 v0, 0x1

    .line 814
    :cond_19
    :goto_19
    return v0
.end method

.method private setCloseIconFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 859
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eq v0, p1, :cond_9

    .line 860
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    .line 861
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 863
    :cond_9
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .registers 3
    .param p1, "hovered"    # Z

    .line 852
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_9

    .line 853
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    .line 854
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 856
    :cond_9
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .line 845
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_9

    .line 846
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    .line 847
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    .line 849
    :cond_9
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .registers 3
    .param p1, "virtualView"    # I

    .line 833
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-eq v0, p1, :cond_12

    .line 834
    if-nez v0, :cond_a

    .line 835
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 837
    :cond_a
    iput p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 838
    if-nez p1, :cond_12

    .line 839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 842
    :cond_12
    return-void
.end method

.method private unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .registers 3
    .param p1, "chipDrawable"    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 321
    if-eqz p1, :cond_6

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    .line 324
    :cond_6
    return-void
.end method

.method private updatePaddingInternal()V
    .registers 6

    .line 205
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_10

    goto/16 :goto_a5

    .line 208
    :cond_10
    nop

    .line 209
    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStartPadding()F

    move-result v0

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 210
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getChipEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 211
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getTextStartPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 212
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getTextEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 214
    .local v0, "paddingEnd":F
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_50

    :cond_3a
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 215
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 216
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 217
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 218
    :cond_50
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 219
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getIconStartPadding()F

    move-result v1

    iget-object v2, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 220
    invoke-virtual {v2}, Landroid/support/design/chip/ChipDrawable;->getIconEndPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 221
    invoke-virtual {v2}, Landroid/support/design/chip/ChipDrawable;->getChipIconSize()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 223
    :cond_65
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 224
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 225
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v1

    iget-object v2, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 226
    invoke-virtual {v2}, Landroid/support/design/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 227
    invoke-virtual {v2}, Landroid/support/design/chip/ChipDrawable;->getCloseIconSize()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 230
    :cond_8a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_a4

    .line 231
    nop

    .line 233
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 234
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getPaddingTop()I

    move-result v2

    float-to-int v3, v0

    .line 236
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getPaddingBottom()I

    move-result v4

    .line 231
    invoke-static {p0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 238
    :cond_a4
    return-void

    .line 206
    .end local v0    # "paddingEnd":F
    :cond_a5
    :goto_a5
    return-void
.end method

.method private updateTextPaintDrawState(Landroid/support/design/resources/TextAppearance;)V
    .registers 5
    .param p1, "textAppearance"    # Landroid/support/design/resources/TextAppearance;

    .line 1170
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1171
    .local v0, "textPaint":Landroid/text/TextPaint;
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1172
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/chip/Chip;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/design/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 1173
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    if-nez p1, :cond_3

    .line 242
    return-void

    .line 244
    :cond_3
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_87

    .line 248
    const-string v1, "drawableLeft"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7f

    .line 251
    const-string v1, "drawableStart"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_77

    .line 254
    const-string v1, "drawableEnd"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Please set end drawable using R.attr#closeIcon."

    if-nez v1, :cond_71

    .line 257
    const-string v1, "drawableRight"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 260
    const/4 v1, 0x1

    const-string v2, "singleLine"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 261
    const-string v2, "lines"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_63

    .line 262
    const-string v2, "minLines"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_63

    .line 263
    const-string v2, "maxLines"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_63

    .line 267
    const v1, 0x800013

    const-string v2, "gravity"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_62

    .line 270
    const-string v0, "Chip"

    const-string v1, "Chip text must be vertically center and start aligned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_62
    return-void

    .line 264
    :cond_63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_6b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_7f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 714
    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->handleAccessibilityExit(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    .line 715
    invoke-virtual {v0, p1}, Landroid/support/design/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 716
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 714
    :goto_18
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 721
    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/Chip$ChipTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method protected drawableStateChanged()V
    .registers 4

    .line 867
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 869
    const/4 v0, 0x0

    .line 871
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 872
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0}, Landroid/support/design/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    .line 875
    :cond_18
    if-eqz v0, :cond_1d

    .line 876
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 878
    :cond_1d
    return-void
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1460
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1029
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 2

    .line 1061
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object v0
.end method

.method public getChipEndPadding()F
    .registers 2

    .line 1622
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1252
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipIconSize()F
    .registers 2

    .line 1298
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipIconSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1270
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    .line 1045
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipMinHeight()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    .line 1510
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1078
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    .line 1094
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1134
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1349
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1405
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    .line 1606
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    .line 1382
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    .line 1590
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1366
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 825
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_c

    .line 826
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 828
    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 830
    :goto_f
    return-void
.end method

.method public getHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1494
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getHideMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    .line 1542
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getIconEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    .line 1526
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getIconStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1111
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1477
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getShowMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1128
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    .line 1574
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getTextEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    .line 1558
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getTextStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 1409
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1431
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .registers 2

    .line 1425
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isChipIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1223
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .registers 2

    .line 1217
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCloseIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    .line 1314
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onChipDrawableSizeChange()V
    .registers 3

    .line 563
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->updatePaddingInternal()V

    .line 564
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->requestLayout()V

    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 566
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidateOutline()V

    .line 568
    :cond_f
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 332
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 333
    .local v0, "state":[I
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 334
    sget-object v1, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    invoke-static {v0, v1}, Landroid/support/design/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 336
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 341
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->shouldDrawText()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2a

    .line 346
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 347
    .local v0, "saveCount":I
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->calculateTextOffsetFromStart(Landroid/support/design/chip/ChipDrawable;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 348
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 350
    return-void

    .line 342
    .end local v0    # "saveCount":I
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 726
    if-eqz p1, :cond_7

    .line 728
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_c

    .line 730
    :cond_7
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 732
    :goto_c
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 734
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 735
    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/chip/Chip$ChipTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 736
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 663
    .local v0, "action":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    goto :goto_25

    .line 668
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 669
    goto :goto_25

    .line 665
    :cond_11
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 666
    nop

    .line 673
    :goto_25
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_41

    const/16 v2, 0x42

    if-eq v1, v2, :cond_31

    packed-switch v1, :pswitch_data_78

    goto :goto_6c

    .line 751
    :pswitch_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 752
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v0

    goto :goto_6c

    .line 746
    :pswitch_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 747
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v0

    goto :goto_6c

    .line 757
    :cond_31
    :pswitch_31
    iget v1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    if-eqz v1, :cond_39

    .line 766
    goto :goto_6c

    .line 762
    :cond_39
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    .line 763
    return v3

    .line 759
    :cond_3d
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performClick()Z

    .line 760
    return v3

    .line 770
    :cond_41
    const/4 v1, 0x0

    .line 771
    .local v1, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 772
    const/4 v1, 0x2

    goto :goto_51

    .line 773
    :cond_4a
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 774
    const/4 v1, 0x1

    .line 776
    :cond_51
    :goto_51
    if-eqz v1, :cond_6c

    .line 777
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 779
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, p0

    .line 781
    .local v4, "nextFocus":Landroid/view/View;
    :cond_58
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 782
    if-eqz v4, :cond_66

    if-eq v4, p0, :cond_66

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_58

    .line 783
    :cond_66
    if-eqz v4, :cond_6c

    .line 784
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 785
    return v3

    .line 792
    .end local v1    # "focusChangeDirection":I
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "nextFocus":Landroid/view/View;
    :cond_6c
    :goto_6c
    if-eqz v0, :cond_72

    .line 793
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 794
    return v3

    .line 796
    :cond_72
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x15
        :pswitch_22
        :pswitch_12
        :pswitch_31
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 948
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 949
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 951
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 629
    .local v1, "action":I
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    .line 630
    .local v2, "eventInCloseIcon":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_39

    if-eq v1, v4, :cond_2d

    const/4 v5, 0x2

    if-eq v1, v5, :cond_22

    const/4 v5, 0x3

    if-eq v1, v5, :cond_35

    goto :goto_3f

    .line 638
    :cond_22
    iget-boolean v5, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_3f

    .line 639
    if-nez v2, :cond_2b

    .line 640
    invoke-direct {p0, v3}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 642
    :cond_2b
    const/4 v0, 0x1

    goto :goto_3f

    .line 646
    :cond_2d
    iget-boolean v5, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_35

    .line 647
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    .line 648
    const/4 v0, 0x1

    .line 652
    :cond_35
    invoke-direct {p0, v3}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 653
    goto :goto_3f

    .line 632
    :cond_39
    if-eqz v2, :cond_3f

    .line 633
    invoke-direct {p0, v4}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    .line 634
    const/4 v0, 0x1

    .line 657
    :cond_3f
    :goto_3f
    if-nez v0, :cond_47

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_48

    :cond_47
    const/4 v3, 0x1

    :cond_48
    return v3
.end method

.method public performCloseIconClick()Z
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->playSoundEffect(I)V

    .line 612
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_d

    .line 613
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 614
    const/4 v1, 0x1

    .local v1, "result":Z
    goto :goto_e

    .line 616
    .end local v1    # "result":Z
    :cond_d
    const/4 v1, 0x0

    .line 619
    .restart local v1    # "result":Z
    :goto_e
    iget-object v2, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/support/design/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    .line 621
    return v1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 396
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 397
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background color; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 406
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 407
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 372
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCheckable(Z)V
    .registers 3
    .param p1, "checkable"    # Z

    .line 1419
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1420
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    .line 1422
    :cond_7
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1413
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1414
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckableResource(I)V

    .line 1416
    :cond_7
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .line 572
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_7

    .line 574
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    goto :goto_1d

    .line 575
    :cond_7
    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 576
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v0

    .line 577
    .local v0, "wasChecked":Z
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 579
    if-eq v0, p1, :cond_1d

    .line 580
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_1d

    .line 581
    invoke-interface {v1, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 585
    .end local v0    # "wasChecked":Z
    :cond_1d
    :goto_1d
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "checkedIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1470
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1471
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1473
    :cond_7
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .param p1, "checkedIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1455
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setCheckedIconVisible(Z)V

    .line 1456
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1449
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setCheckedIconVisible(I)V

    .line 1450
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1464
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1465
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconResource(I)V

    .line 1467
    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1435
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1436
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(I)V

    .line 1438
    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 3
    .param p1, "checkedIconVisible"    # Z

    .line 1441
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1442
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1444
    :cond_7
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipBackgroundColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1039
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1040
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1042
    :cond_7
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1033
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1034
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    .line 1036
    :cond_7
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .param p1, "chipCornerRadius"    # F

    .line 1071
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1072
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 1074
    :cond_7
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1065
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1066
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    .line 1068
    :cond_7
    return-void
.end method

.method public setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq v0, p1, :cond_3d

    .line 299
    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 300
    iput-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 301
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 303
    sget-boolean v0, Landroid/support/design/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_32

    .line 305
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 307
    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 310
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 312
    iget-object v0, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d

    .line 314
    :cond_32
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 315
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_3d
    :goto_3d
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3
    .param p1, "chipEndPadding"    # F

    .line 1632
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1633
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 1635
    :cond_7
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1626
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1627
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    .line 1629
    :cond_7
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "chipIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1262
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1263
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    :cond_7
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .param p1, "chipIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1247
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setChipIconVisible(Z)V

    .line 1248
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1241
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setChipIconVisible(I)V

    .line 1242
    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1256
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1257
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconResource(I)V

    .line 1259
    :cond_7
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 3
    .param p1, "chipIconSize"    # F

    .line 1308
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1309
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    .line 1311
    :cond_7
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1302
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1303
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSizeResource(I)V

    .line 1305
    :cond_7
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipIconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1292
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1293
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 1295
    :cond_7
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1280
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1281
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconTintResource(I)V

    .line 1283
    :cond_7
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1227
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1228
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(I)V

    .line 1230
    :cond_7
    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 3
    .param p1, "chipIconVisible"    # Z

    .line 1233
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1234
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1236
    :cond_7
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3
    .param p1, "minHeight"    # F

    .line 1055
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1056
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 1058
    :cond_7
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1049
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1050
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeightResource(I)V

    .line 1052
    :cond_7
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3
    .param p1, "chipStartPadding"    # F

    .line 1520
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1521
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 1523
    :cond_7
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1514
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1515
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    .line 1517
    :cond_7
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipStrokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1088
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1089
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1091
    :cond_7
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1082
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1083
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    .line 1085
    :cond_7
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3
    .param p1, "chipStrokeWidth"    # F

    .line 1104
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1105
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 1107
    :cond_7
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1098
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1099
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    .line 1101
    :cond_7
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "chipText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1161
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    return-void
.end method

.method public setChipTextResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1155
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "closeIcon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1359
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1360
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1362
    :cond_7
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "closeIconContentDescription"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1398
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1399
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_7
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .param p1, "closeIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1344
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setCloseIconVisible(Z)V

    .line 1345
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setCloseIconVisible(I)V

    .line 1339
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3
    .param p1, "closeIconEndPadding"    # F

    .line 1616
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1617
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 1619
    :cond_7
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1610
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1611
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    .line 1613
    :cond_7
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1353
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1354
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconResource(I)V

    .line 1356
    :cond_7
    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3
    .param p1, "closeIconSize"    # F

    .line 1392
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1393
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 1395
    :cond_7
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1386
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1387
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    .line 1389
    :cond_7
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3
    .param p1, "closeIconStartPadding"    # F

    .line 1600
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1601
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 1603
    :cond_7
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1594
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1595
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    .line 1597
    :cond_7
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "closeIconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1376
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1377
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 1379
    :cond_7
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1370
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1371
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTintResource(I)V

    .line 1373
    :cond_7
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1324
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1325
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(I)V

    .line 1327
    :cond_7
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 3
    .param p1, "closeIconVisible"    # Z

    .line 1330
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1331
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1333
    :cond_7
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 420
    if-nez p1, :cond_10

    .line 423
    if-nez p3, :cond_8

    .line 427
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 428
    return-void

    .line 424
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 464
    if-nez p1, :cond_10

    .line 467
    if-nez p3, :cond_8

    .line 471
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 472
    return-void

    .line 468
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 477
    if-nez p1, :cond_10

    .line 480
    if-nez p3, :cond_8

    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 485
    return-void

    .line 481
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 493
    if-nez p1, :cond_10

    .line 496
    if-nez p3, :cond_8

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 500
    return-void

    .line 497
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 432
    if-nez p1, :cond_10

    .line 435
    if-nez p3, :cond_8

    .line 439
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 440
    return-void

    .line 436
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 448
    if-nez p1, :cond_10

    .line 451
    if-nez p3, :cond_8

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 456
    return-void

    .line 452
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 4
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .line 509
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_5

    .line 510
    return-void

    .line 512
    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_14

    .line 515
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 516
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_13

    .line 517
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 519
    :cond_13
    return-void

    .line 513
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Text within a chip are not allowed to scroll."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .line 354
    const v0, 0x800013

    if-eq p1, v0, :cond_d

    .line 355
    const-string v0, "Chip"

    const-string v1, "Chip text must be vertically center and start aligned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 357
    :cond_d
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setGravity(I)V

    .line 359
    :goto_10
    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .registers 3
    .param p1, "hideMotionSpec"    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1504
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1505
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 1507
    :cond_7
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1498
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1499
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    .line 1501
    :cond_7
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 3
    .param p1, "iconEndPadding"    # F

    .line 1552
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1553
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 1555
    :cond_7
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1546
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1547
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    .line 1549
    :cond_7
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 3
    .param p1, "iconStartPadding"    # F

    .line 1536
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1537
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 1539
    :cond_7
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1530
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1531
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    .line 1533
    :cond_7
    return-void
.end method

.method public setLines(I)V
    .registers 4
    .param p1, "lines"    # I

    .line 531
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 534
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setLines(I)V

    .line 535
    return-void

    .line 532
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxLines(I)V
    .registers 4
    .param p1, "maxLines"    # I

    .line 547
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 550
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setMaxLines(I)V

    .line 551
    return-void

    .line 548
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxWidth(I)V
    .registers 3
    .param p1, "maxWidth"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 555
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 556
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 557
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setMaxWidth(I)V

    .line 559
    :cond_a
    return-void
.end method

.method public setMinLines(I)V
    .registers 4
    .param p1, "minLines"    # I

    .line 539
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 542
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setMinLines(I)V

    .line 543
    return-void

    .line 540
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 592
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 593
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 597
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 598
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1121
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1122
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1124
    :cond_7
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1115
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1116
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColorResource(I)V

    .line 1118
    :cond_7
    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .registers 3
    .param p1, "showMotionSpec"    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1487
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1488
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 1490
    :cond_7
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1481
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1482
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    .line 1484
    :cond_7
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 4
    .param p1, "singleLine"    # Z

    .line 523
    if-eqz p1, :cond_6

    .line 526
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setSingleLine(Z)V

    .line 527
    return-void

    .line 524
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 1139
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_5

    .line 1140
    return-void

    .line 1142
    :cond_5
    if-nez p1, :cond_9

    .line 1143
    const-string p1, ""

    .line 1145
    :cond_9
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1146
    .local v0, "unicodeWrappedText":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v1}, Landroid/support/design/chip/ChipDrawable;->shouldDrawText()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    invoke-super {p0, v1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1147
    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v1, :cond_26

    .line 1148
    invoke-virtual {v1, p1}, Landroid/support/design/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_26
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 6
    .param p1, "resId"    # I

    .line 1206
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1207
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 1208
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1210
    :cond_a
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1211
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/chip/Chip;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 1212
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->updateTextPaintDrawState(Landroid/support/design/resources/TextAppearance;)V

    .line 1214
    :cond_28
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 1194
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1195
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 1196
    invoke-virtual {v0, p2}, Landroid/support/design/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1198
    :cond_a
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1199
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/chip/Chip;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 1200
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->updateTextPaintDrawState(Landroid/support/design/resources/TextAppearance;)V

    .line 1202
    :cond_24
    return-void
.end method

.method public setTextAppearance(Landroid/support/design/resources/TextAppearance;)V
    .registers 6
    .param p1, "textAppearance"    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1183
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1184
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    .line 1186
    :cond_7
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1187
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/chip/Chip;->fontCallback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V

    .line 1188
    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->updateTextPaintDrawState(Landroid/support/design/resources/TextAppearance;)V

    .line 1190
    :cond_21
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1176
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1177
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1179
    :cond_7
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/design/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    .line 1180
    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3
    .param p1, "textEndPadding"    # F

    .line 1584
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1585
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 1587
    :cond_7
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1578
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1579
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    .line 1581
    :cond_7
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3
    .param p1, "textStartPadding"    # F

    .line 1568
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1569
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 1571
    :cond_7
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1562
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1563
    invoke-virtual {v0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    .line 1565
    :cond_7
    return-void
.end method
