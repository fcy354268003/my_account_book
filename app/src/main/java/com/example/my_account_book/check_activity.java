package com.example.my_account_book;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.tv.TvContentRating;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import org.litepal.LitePal;

import java.util.Calendar;
import java.util.List;
import java.util.concurrent.Executor;

import javax.crypto.spec.IvParameterSpec;

public class check_activity extends BaseActivity implements View.OnClickListener {
    private EditText mEditText;
    private Button mConfirm;
    private boolean isVisibility = false;
    private static final String TAG = "check_activity";
    private Switch prompting;
    private ImageView figure, guide_prompt, change_way;

    private boolean switch_boolean = false;

    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SharedPreferences data = getSharedPreferences("data", MODE_PRIVATE);
        switch_boolean = data.getBoolean("switch", false);
        setContentView(R.layout.activity_check_activity);
        guide_prompt = findViewById(R.id.guide_promptinf);
        change_way = findViewById(R.id.change_way);
        mEditText = findViewById(R.id.use_name);
        mConfirm = findViewById(R.id.confirm);
        figure = findViewById(R.id.figure);
        prompting = findViewById(R.id.radio_btn);
        prompting.setOnClickListener(this);
        change_way.setOnClickListener(this);
        figure.setOnClickListener(this);
        mConfirm.setOnClickListener(this);
        prompting.setChecked(switch_boolean);
        String channel = getIntent().getStringExtra("channel");
        if (!TextUtils.isEmpty(channel)) {
            if (channel.equals("notification")) {
                if (Biometric_tool.isBiometricAvailable(this)) {
                    Biometric_tool.showBiometricPrompt(this);
                } else {
                    MyToast.showMessage(this, "指纹识别不可用");
                }
            }
        }
//        Intent intent1 = new Intent(this, MyReceiver.class);
//        intent1.putExtra("flag",1);
//        intent1.setAction("alarm");
//        boolean exist = PendingIntent.getBroadcast(this, 0, intent1, PendingIntent.FLAG_NO_CREATE) != null;
//        if (exist){
//            MyToast.showMessage(this,"设置成功！！！");
//        }
    }

    private void initAlarm(boolean b) {
        AlarmManager alarmManager = (AlarmManager) getSystemService(ALARM_SERVICE);
        Intent intent0 = new Intent(this, MyReceiver.class);
        intent0.putExtra("flag",0);
        Intent intent1 = new Intent(this, MyReceiver.class);
        intent1.putExtra("flag",1);
        Intent intent2 = new Intent(this, MyReceiver.class);
        intent2.putExtra("flag",2);
        intent1.setAction("alarm");
        intent2.setAction("alarm");
        intent0.setAction("alarm");
        PendingIntent pendingIntent0 = PendingIntent.getBroadcast(this, 0, intent0, PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent pendingIntent1 = PendingIntent.getBroadcast(this, 1, intent1, PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent pendingIntent2 = PendingIntent.getBroadcast(this, 2, intent2, PendingIntent.FLAG_UPDATE_CURRENT);
//        boolean exist = PendingIntent.getBroadcast(this, 0, intent1, PendingIntent.FLAG_NO_CREATE) != null;
//        if (exist){
//            MyToast.showMessage(this,"设置成功！！！");
//        }
        if (b) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(Calendar.HOUR_OF_DAY, 12);
            calendar.set(Calendar.MINUTE, 40);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(),pendingIntent1);
            calendar.set(Calendar.HOUR_OF_DAY, 7);
            calendar.set(Calendar.MINUTE, 20);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent0);
            calendar.set(Calendar.HOUR_OF_DAY, 18);
            calendar.set(Calendar.MINUTE, 20);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent2);
            MyToast.showMessage(this, "提醒设置成功");
        } else {
            alarmManager.cancel(pendingIntent0);
            alarmManager.cancel(pendingIntent1);
            alarmManager.cancel(pendingIntent2);
            MyToast.showMessage(this, "提醒已取消");
        }


    }

    private void toMain() {
        Intent intent = new Intent(check_activity.this, ContainerActivity.class);
        startActivity(intent);
        finish();
        MyToast.showMessage(check_activity.this, "登陆成功");
    }


    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.confirm:
                final String uri = mEditText.getText().toString();
                final SharedPreferences user = getSharedPreferences("user", MODE_PRIVATE);
                boolean isFirst = user.getBoolean("isFirst", true);
                if (isFirst) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(check_activity.this);
                    builder.setCancelable(false);
                    View inflate = LayoutInflater.from(check_activity.this).inflate(R.layout.dialog, null, false);
                    Button confirm = inflate.findViewById(R.id.confirm);
                    builder.setTitle("提示：");
                    builder.setMessage("是否将该用户标识作为你的永久用户标识？");
                    builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            SharedPreferences.Editor edit = user.edit();
                            edit.putBoolean("isFirst", false);
                            edit.putString("uri", uri);
                            edit.apply();
                            toMain();
                        }
                    });
                    builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            MyToast.showMessage(check_activity.this, "取消成功");
                        }
                    });
                    AlertDialog show = builder.show();
                    show.setIcon(R.drawable.warning);
                    show.show();
                } else if (uri.equals(user.getString("uri", "#########"))) {
                    toMain();
                } else MyToast.showMessage(check_activity.this, "登陆失败");
                break;
            case R.id.radio_btn:
                SharedPreferences data = getSharedPreferences("data", MODE_PRIVATE);
                SharedPreferences.Editor edit = data.edit();
                edit.putBoolean("switch", !switch_boolean);
                edit.apply();
                switch_boolean = !switch_boolean;
                initAlarm(prompting.isChecked());
                break;
            case R.id.figure:
                if (Biometric_tool.isBiometricAvailable(this)) {
                    Biometric_tool.showBiometricPrompt(this);
                } else {
                    MyToast.showMessage(this, "指纹识别不可用");
                }
                break;
            case R.id.change_way:
                if (!isVisibility) {
                    mEditText.setVisibility(View.GONE);
                    figure.setVisibility(View.VISIBLE);
                    guide_prompt.setVisibility(View.VISIBLE);
                    isVisibility = true;
                } else {
                    mEditText.setVisibility(View.VISIBLE);
                    figure.setVisibility(View.GONE);
                    guide_prompt.setVisibility(View.GONE);
                    isVisibility = false;
                }
                break;
        }
    }


}
