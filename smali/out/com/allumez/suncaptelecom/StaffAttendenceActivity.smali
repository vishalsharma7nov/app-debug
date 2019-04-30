.class public Lcom/allumez/suncaptelecom/StaffAttendenceActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StaffAttendenceActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field Date:Ljava/lang/String;

.field Location:Landroid/app/ProgressDialog;

.field Time:Ljava/lang/String;

.field UPLOADATTENDENCE:Ljava/lang/String;

.field Username:Ljava/lang/String;

.field calander:Ljava/util/Calendar;

.field displayDate:Landroid/widget/TextView;

.field displayTime:Landroid/widget/TextView;

.field locationManager:Landroid/location/LocationManager;

.field mLatitude:Landroid/widget/TextView;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field mLoginTime:Landroid/widget/Button;

.field mLogoutTime:Landroid/widget/Button;

.field mLongitude:Landroid/widget/TextView;

.field mUsername:Landroid/widget/TextView;

.field simpledateformat:Ljava/text/SimpleDateFormat;

.field simpletimeformat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 56
    const-string v0, "http://api.hostingfunda.com/suncap/employeeattendence.php"

    iput-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->UPLOADATTENDENCE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected exitByBackKey()V
    .registers 4

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    const-string v1, "HAVE YOU MARKED THE ATTENDENCE?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$8;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$8;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;)V

    .line 230
    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$7;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$7;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;)V

    .line 236
    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, "alertbox":Landroid/app/AlertDialog;
    return-void
.end method

.method getLocation()V
    .registers 8

    .line 116
    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "Please wait..."

    invoke-static {p0, v1, v2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Location:Landroid/app/ProgressDialog;

    .line 118
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 119
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 120
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 121
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 124
    :try_start_25
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->locationManager:Landroid/location/LocationManager;

    .line 125
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x40a00000    # 5.0f

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3b} :catch_3c

    .line 129
    goto :goto_40

    .line 127
    :catch_3c
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->getLocation()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .local v0, "someHandler":Landroid/os/Handler;
    new-instance v1, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$1;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;Landroid/os/Handler;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    const v1, 0x7f0800e3

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mUsername:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLatitude:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f080073

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLongitude:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->displayDate:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->displayTime:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLoginTime:Landroid/widget/Button;

    .line 81
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLoginTime:Landroid/widget/Button;

    new-instance v2, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$2;

    invoke-direct {v2, p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$2;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLogoutTime:Landroid/widget/Button;

    .line 90
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLogoutTime:Landroid/widget/Button;

    new-instance v2, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;

    invoke-direct {v2, p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->calander:Ljava/util/Calendar;

    .line 102
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->simpledateformat:Ljava/text/SimpleDateFormat;

    .line 103
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->simpletimeformat:Ljava/text/SimpleDateFormat;

    .line 104
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->simpledateformat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->calander:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Date:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->simpletimeformat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->calander:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Time:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->displayDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Username:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mUsername:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 218
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 219
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->exitByBackKey()V

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .line 134
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLatitude:Landroid/widget/TextView;

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

    .line 135
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLongitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Location:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    :try_start_37
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 139
    .local v1, "geocoder":Landroid/location/Geocoder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 140
    .local v2, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 141
    .local v4, "lng":D
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_66

    .line 144
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 146
    .local v8, "address":Landroid/location/Address;
    invoke-virtual {v8, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_66} :catch_67

    .line 154
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "address":Landroid/location/Address;
    :cond_66
    goto :goto_68

    .line 151
    :catch_67
    move-exception v0

    .line 156
    :goto_68
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 171
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 166
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 161
    return-void
.end method

.method public uploadingAttendence()V
    .registers 20

    .line 175
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, "username":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "latitude":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->mLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, "longitude":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->displayDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "date":Ljava/lang/String;
    iget-object v0, v11, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->displayTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 184
    .local v16, "time":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "Uploading Attendence"

    const-string v2, "Please wait..."

    invoke-static {v11, v1, v2, v0, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v10

    .line 186
    .local v10, "loading":Landroid/app/ProgressDialog;
    new-instance v17, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;

    iget-object v3, v11, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->UPLOADATTENDENCE:Ljava/lang/String;

    new-instance v4, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;

    invoke-direct {v4, v11, v10}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;Landroid/app/ProgressDialog;)V

    new-instance v5, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$5;

    invoke-direct {v5, v11}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$5;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;)V

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

    invoke-direct/range {v0 .. v10}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;-><init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 214
    .local v1, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 215
    return-void
.end method
