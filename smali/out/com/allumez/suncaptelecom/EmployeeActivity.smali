.class public Lcom/allumez/suncaptelecom/EmployeeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EmployeeActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final CAPTURE_PICCODE:I = 0x3dd


# instance fields
.field Date:Ljava/lang/String;

.field Location:Landroid/app/ProgressDialog;

.field Time:Ljava/lang/String;

.field UPLOADIMAGE:Ljava/lang/String;

.field Username:Ljava/lang/String;

.field bmp:Landroid/graphics/Bitmap;

.field calander:Ljava/util/Calendar;

.field displayDate:Landroid/widget/TextView;

.field displayTime:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field imagedata:Ljava/lang/String;

.field locationManager:Landroid/location/LocationManager;

.field mCamera:Landroid/support/design/widget/FloatingActionButton;

.field mLatitude:Landroid/widget/TextView;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field mLongitude:Landroid/widget/TextView;

.field mUpload:Landroid/widget/Button;

.field mUsername:Landroid/widget/TextView;

.field simpledateformat:Ljava/text/SimpleDateFormat;

.field simpletimeformat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 74
    const-string v0, "http://api.hostingfunda.com/suncap/employee.php"

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->UPLOADIMAGE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected exitByBackKey()V
    .registers 4

    .line 278
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v1, "DO YOU WANT TO LOGOUT?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/EmployeeActivity$7;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/EmployeeActivity$7;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;)V

    .line 280
    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/EmployeeActivity$6;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/EmployeeActivity$6;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;)V

    .line 286
    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 292
    .local v0, "alertbox":Landroid/app/AlertDialog;
    return-void
.end method

.method getLocation()V
    .registers 8

    .line 181
    const/4 v0, 0x0

    const-string v1, "Getting Ready"

    const-string v2, "Please wait..."

    invoke-static {p0, v1, v2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Location:Landroid/app/ProgressDialog;

    .line 183
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 184
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 185
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 186
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 189
    :try_start_25
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->locationManager:Landroid/location/LocationManager;

    .line 190
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x40a00000    # 5.0f

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3b} :catch_3c

    .line 194
    goto :goto_40

    .line 192
    :catch_3c
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 195
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_40
    return-void
.end method

.method public getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 170
    .local v1, "imageBytes":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 171
    .local v2, "encodedImage":Ljava/lang/String;
    return-object v2

    .line 173
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "imageBytes":[B
    .end local v2    # "encodedImage":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 142
    const/16 v0, 0x3dd

    if-ne p1, v0, :cond_42

    .line 144
    const/4 v0, -0x1

    if-ne p2, v0, :cond_42

    .line 147
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->bmp:Landroid/graphics/Bitmap;

    .line 148
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->bmp:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 155
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 159
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteArray":[B
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getLocation()V

    .line 84
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mUsername:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLatitude:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLongitude:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->imageView:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mUpload:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mUpload:Landroid/widget/Button;

    new-instance v1, Lcom/allumez/suncaptelecom/EmployeeActivity$1;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/EmployeeActivity$1;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->displayDate:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->displayTime:Landroid/widget/TextView;

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->calander:Ljava/util/Calendar;

    .line 109
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->simpledateformat:Ljava/text/SimpleDateFormat;

    .line 110
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->simpletimeformat:Ljava/text/SimpleDateFormat;

    .line 111
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->simpledateformat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->calander:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Date:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->simpletimeformat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->calander:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Time:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->displayDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mCamera:Landroid/support/design/widget/FloatingActionButton;

    .line 116
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mCamera:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/allumez/suncaptelecom/EmployeeActivity$2;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/EmployeeActivity$2;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Username:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mUsername:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 268
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 269
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->exitByBackKey()V

    .line 272
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .line 199
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLatitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLongitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity;->Location:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 203
    :try_start_37
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 204
    .local v1, "geocoder":Landroid/location/Geocoder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 205
    .local v2, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 206
    .local v4, "lng":D
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_66

    .line 209
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 211
    .local v8, "address":Landroid/location/Address;
    invoke-virtual {v8, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_66} :catch_67

    .line 219
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "address":Landroid/location/Address;
    :cond_66
    goto :goto_68

    .line 216
    :catch_67
    move-exception v0

    .line 221
    :goto_68
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 309
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 304
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 299
    return-void
.end method

.method public uploadingData()V
    .registers 20

    .line 225
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 226
    .local v12, "username":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "latitude":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->mLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "longitude":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->displayDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, "date":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->displayTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 230
    .local v16, "time":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->imagedata:Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    const-string v1, "Uploading Image"

    const-string v2, "Please wait..."

    invoke-static {v11, v1, v2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v10

    .line 236
    .local v10, "loading":Landroid/app/ProgressDialog;
    new-instance v17, Lcom/allumez/suncaptelecom/EmployeeActivity$5;

    iget-object v3, v11, Lcom/allumez/suncaptelecom/EmployeeActivity;->UPLOADIMAGE:Ljava/lang/String;

    new-instance v4, Lcom/allumez/suncaptelecom/EmployeeActivity$3;

    invoke-direct {v4, v11, v10}, Lcom/allumez/suncaptelecom/EmployeeActivity$3;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;Landroid/app/ProgressDialog;)V

    new-instance v5, Lcom/allumez/suncaptelecom/EmployeeActivity$4;

    invoke-direct {v5, v11}, Lcom/allumez/suncaptelecom/EmployeeActivity$4;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;)V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v18, v10

    .end local v10    # "loading":Landroid/app/ProgressDialog;
    .local v18, "loading":Landroid/app/ProgressDialog;
    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/allumez/suncaptelecom/EmployeeActivity$5;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 265
    .local v1, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 266
    return-void
.end method
