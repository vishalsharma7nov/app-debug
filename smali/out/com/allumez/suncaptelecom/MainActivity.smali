.class public Lcom/allumez/suncaptelecom/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field Address:Ljava/lang/String;

.field Date:Ljava/lang/String;

.field Location:Landroid/app/ProgressDialog;

.field LoginAPI:Ljava/lang/String;

.field Time:Ljava/lang/String;

.field calander:Ljava/util/Calendar;

.field locationManager:Landroid/location/LocationManager;

.field mAddress:Landroid/widget/TextView;

.field mLatitude:Landroid/widget/TextView;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field mLogin:Landroid/widget/Button;

.field mLongitude:Landroid/widget/TextView;

.field mPassword:Landroid/widget/EditText;

.field mUsername:Landroid/widget/EditText;

.field simpledateformat:Ljava/text/SimpleDateFormat;

.field simpletimeformat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    const-string v0, "http://api.hostingfunda.com/suncap/login.php"

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->LoginAPI:Ljava/lang/String;

    return-void
.end method

.method public static varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 249
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1b

    aget-object v3, p1, v2

    .line 250
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 251
    return v1

    .line 249
    .end local v3    # "permission":Ljava/lang/String;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 255
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public GetPermission()V
    .registers 7

    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, "PERMISSION_ALL":I
    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.RECORD_AUDIO"

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    const-string v5, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "PERMISSIONS":[Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/allumez/suncaptelecom/MainActivity;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 244
    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 246
    :cond_18
    return-void
.end method

.method public Login()V
    .registers 12

    .line 103
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "password":Ljava/lang/String;
    new-instance v10, Lcom/allumez/suncaptelecom/MainActivity$4;

    iget-object v4, p0, Lcom/allumez/suncaptelecom/MainActivity;->LoginAPI:Ljava/lang/String;

    new-instance v5, Lcom/allumez/suncaptelecom/MainActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/allumez/suncaptelecom/MainActivity$2;-><init>(Lcom/allumez/suncaptelecom/MainActivity;Ljava/lang/String;)V

    new-instance v6, Lcom/allumez/suncaptelecom/MainActivity$3;

    invoke-direct {v6, p0}, Lcom/allumez/suncaptelecom/MainActivity$3;-><init>(Lcom/allumez/suncaptelecom/MainActivity;)V

    const/4 v3, 0x1

    move-object v1, v10

    move-object v2, p0

    move-object v7, v0

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/allumez/suncaptelecom/MainActivity$4;-><init>(Lcom/allumez/suncaptelecom/MainActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    .line 157
    .local v2, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 158
    return-void
.end method

.method protected exitByBackKey()V
    .registers 4

    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    const-string v1, "DO YOU WANT TO QUIT?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/MainActivity$6;-><init>(Lcom/allumez/suncaptelecom/MainActivity;)V

    .line 271
    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/MainActivity$5;-><init>(Lcom/allumez/suncaptelecom/MainActivity;)V

    .line 277
    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 283
    .local v0, "alertbox":Landroid/app/AlertDialog;
    return-void
.end method

.method public getLocation()V
    .registers 8

    .line 162
    const/4 v0, 0x0

    const-string v1, "App Is Getting Ready"

    const-string v2, "Please Wait..."

    invoke-static {p0, v1, v2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->Location:Landroid/app/ProgressDialog;

    .line 164
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 165
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 166
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 167
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 170
    :try_start_25
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->locationManager:Landroid/location/LocationManager;

    .line 171
    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x40a00000    # 5.0f

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3b} :catch_3c

    .line 175
    goto :goto_40

    .line 173
    :catch_3c
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/MainActivity;->GetPermission()V

    .line 76
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mUsername:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mPassword:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLatitude:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLongitude:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mAddress:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLogin:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLogin:Landroid/widget/Button;

    new-instance v1, Lcom/allumez/suncaptelecom/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/MainActivity$1;-><init>(Lcom/allumez/suncaptelecom/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->calander:Ljava/util/Calendar;

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->simpledateformat:Ljava/text/SimpleDateFormat;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->simpletimeformat:Ljava/text/SimpleDateFormat;

    .line 95
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->simpledateformat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity;->calander:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->Date:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->simpletimeformat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity;->calander:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->Time:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 259
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 260
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/MainActivity;->exitByBackKey()V

    .line 263
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .line 181
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLatitude:Landroid/widget/TextView;

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

    .line 182
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->mLongitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity;->Location:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    :try_start_37
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 188
    .local v1, "geocoder":Landroid/location/Geocoder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 189
    .local v2, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 190
    .local v4, "lng":D
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_66

    .line 193
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 195
    .local v8, "address":Landroid/location/Address;
    invoke-virtual {v8, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .end local v8    # "address":Landroid/location/Address;
    :cond_66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/allumez/suncaptelecom/MainActivity;->Address:Ljava/lang/String;

    .line 200
    iget-object v7, p0, Lcom/allumez/suncaptelecom/MainActivity;->mAddress:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/allumez/suncaptelecom/MainActivity;->Address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_73} :catch_74

    .line 206
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    goto :goto_75

    .line 203
    :catch_74
    move-exception v0

    .line 209
    :goto_75
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x1

    const-string v1, "Turn on the location"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 225
    .local v1, "LocationIsNotOn":Landroid/app/ProgressDialog;
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Your "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service is off."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_33

    .line 231
    :cond_30
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    :goto_33
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 219
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 214
    return-void
.end method
