.class final Lcom/google/android/gms/common/internal/zad;
.super Lcom/google/android/gms/common/internal/DialogRedirect;


# instance fields
.field private final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field private final synthetic val$requestCode:I

.field private final synthetic zaog:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/support/v4/app/Fragment;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zad;->zaog:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zad;->val$fragment:Landroid/support/v4/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zad;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zad;->zaog:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zad;->val$fragment:Landroid/support/v4/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/zad;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    :cond_b
    return-void
.end method