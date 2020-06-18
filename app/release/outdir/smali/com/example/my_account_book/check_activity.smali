.class public Lcom/example/my_account_book/check_activity;
.super Lcom/example/my_account_book/BaseActivity;
.source "check_activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "check_activity"


# instance fields
.field private change_way:Landroid/widget/ImageView;

.field private figure:Landroid/widget/ImageView;

.field private guide_prompt:Landroid/widget/ImageView;

.field private isVisibility:Z

.field private mConfirm:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private prompting:Landroid/widget/Switch;

.field private switch_boolean:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/example/my_account_book/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/example/my_account_book/check_activity;->isVisibility:Z

    .line 54
    iput-boolean v0, p0, Lcom/example/my_account_book/check_activity;->switch_boolean:Z

    return-void
.end method

.method static synthetic access$000(Lcom/example/my_account_book/check_activity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/example/my_account_book/check_activity;->toMain()V

    return-void
.end method

.method private initAlarm(Z)V
    .locals 13

    const-string v0, "alarm"

    .line 99
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/check_activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 100
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/example/my_account_book/MyReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    const/4 v3, 0x0

    .line 102
    invoke-static {p0, v3, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v3, 0x1

    .line 103
    invoke-static {p0, v3, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const/4 v3, 0x2

    .line 104
    invoke-static {p0, v3, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v10, 0xb

    const/16 v11, 0xc

    .line 112
    invoke-virtual {p1, v10, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x28

    .line 113
    invoke-virtual {p1, v11, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v2, 0x7

    .line 115
    invoke-virtual {p1, v10, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0x14

    .line 116
    invoke-virtual {p1, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 117
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v2, v1

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const/16 v2, 0x12

    .line 118
    invoke-virtual {p1, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 119
    invoke-virtual {p1, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v2, v1

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const-string p1, "\u63d0\u9192\u8bbe\u7f6e\u6210\u529f"

    .line 121
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 124
    invoke-virtual {v1, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p1, "\u63d0\u9192\u5df2\u53d6\u6d88"

    .line 126
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private toMain()V
    .locals 2

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/my_account_book/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/check_activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/example/my_account_book/check_activity;->finish()V

    const-string v0, "\u767b\u9646\u6210\u529f"

    .line 136
    invoke-static {p0, v0}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "data"

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/example/my_account_book/check_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 180
    iget-boolean v1, p0, Lcom/example/my_account_book/check_activity;->switch_boolean:Z

    xor-int/2addr v1, v0

    const-string v2, "switch"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    iget-boolean p1, p0, Lcom/example/my_account_book/check_activity;->switch_boolean:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/example/my_account_book/check_activity;->switch_boolean:Z

    .line 183
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->prompting:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/example/my_account_book/check_activity;->initAlarm(Z)V

    goto/16 :goto_0

    .line 186
    :sswitch_1
    invoke-static {p0}, Lcom/example/my_account_book/Biometric_tool;->isBiometricAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    invoke-static {p0}, Lcom/example/my_account_book/Biometric_tool;->showBiometricPrompt(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u6307\u7eb9\u8bc6\u522b\u4e0d\u53ef\u7528"

    .line 189
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :sswitch_2
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "user"

    .line 145
    invoke-virtual {p0, v2, v1}, Lcom/example/my_account_book/check_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "isFirst"

    .line 146
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 150
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0022

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080052

    .line 151
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v1, "\u63d0\u793a\uff1a"

    .line 152
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "\u662f\u5426\u5c06\u8be5\u7528\u6237\u6807\u8bc6\u4f5c\u4e3a\u4f60\u7684\u6c38\u4e45\u7528\u6237\u6807\u8bc6\uff1f"

    .line 153
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 154
    new-instance v1, Lcom/example/my_account_book/check_activity$1;

    invoke-direct {v1, p0, v2, p1}, Lcom/example/my_account_book/check_activity$1;-><init>(Lcom/example/my_account_book/check_activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 164
    new-instance p1, Lcom/example/my_account_book/check_activity$2;

    invoke-direct {p1, p0}, Lcom/example/my_account_book/check_activity$2;-><init>(Lcom/example/my_account_book/check_activity;)V

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f0700e9

    .line 171
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 172
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "uri"

    const-string v1, "#########"

    .line 173
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/example/my_account_book/check_activity;->toMain()V

    goto :goto_0

    :cond_2
    const-string p1, "\u767b\u9646\u5931\u8d25"

    .line 175
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :sswitch_3
    iget-boolean p1, p0, Lcom/example/my_account_book/check_activity;->isVisibility:Z

    const/16 v2, 0x8

    if-nez p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->figure:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->guide_prompt:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iput-boolean v0, p0, Lcom/example/my_account_book/check_activity;->isVisibility:Z

    goto :goto_0

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->figure:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->guide_prompt:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iput-boolean v1, p0, Lcom/example/my_account_book/check_activity;->isVisibility:Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08004d -> :sswitch_3
        0x7f080052 -> :sswitch_2
        0x7f080067 -> :sswitch_1
        0x7f080094 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 58
    invoke-super {p0, p1}, Lcom/example/my_account_book/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const-string v0, "data"

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/example/my_account_book/check_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "switch"

    .line 60
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/example/my_account_book/check_activity;->switch_boolean:Z

    const p1, 0x7f0b001d

    .line 61
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->setContentView(I)V

    const p1, 0x7f080070

    .line 62
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/my_account_book/check_activity;->guide_prompt:Landroid/widget/ImageView;

    const p1, 0x7f08004d

    .line 63
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/my_account_book/check_activity;->change_way:Landroid/widget/ImageView;

    const p1, 0x7f0800d7

    .line 64
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/my_account_book/check_activity;->mEditText:Landroid/widget/EditText;

    const p1, 0x7f080052

    .line 65
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/my_account_book/check_activity;->mConfirm:Landroid/widget/Button;

    const p1, 0x7f080067

    .line 66
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/my_account_book/check_activity;->figure:Landroid/widget/ImageView;

    const p1, 0x7f080094

    .line 67
    invoke-virtual {p0, p1}, Lcom/example/my_account_book/check_activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/example/my_account_book/check_activity;->prompting:Landroid/widget/Switch;

    .line 68
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->prompting:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->change_way:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->figure:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->mConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/example/my_account_book/check_activity;->prompting:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/example/my_account_book/check_activity;->switch_boolean:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/example/my_account_book/check_activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "channel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "notification"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    invoke-static {p0}, Lcom/example/my_account_book/Biometric_tool;->isBiometricAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/example/my_account_book/Biometric_tool;->showBiometricPrompt(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6307\u7eb9\u8bc6\u522b\u4e0d\u53ef\u7528"

    .line 79
    invoke-static {p0, p1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/example/my_account_book/MyReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "alarm"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/example/my_account_book/check_activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v1, 0x15

    const/16 v2, 0xb

    .line 87
    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x7

    const/16 v9, 0xc

    .line 88
    invoke-virtual {v8, v9, v1}, Ljava/util/Calendar;->set(II)V

    const/high16 v10, 0x8000000

    .line 89
    invoke-static {p0, v2, p1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    move-object v1, v0

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 91
    invoke-static {p0, v9, p1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/16 v1, 0xa

    .line 92
    invoke-virtual {v8, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object v1, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 94
    invoke-virtual {v0, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
