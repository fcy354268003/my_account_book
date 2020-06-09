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

public class check_activity extends AppCompatActivity implements View.OnClickListener {
    private EditText mEditText;
    private Button mConfirm;
    private boolean isVisibility = false;
    private static final String TAG = "check_activity";
    private Switch prompting;
    private ImageView figure, guide_prompt, change_way;
    private Handler handler = new Handler();
    private Executor executor = new Executor() {
        @Override
        public void execute(Runnable command) {
            handler.post(command);
        }
    };
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
    }

    private void initAlarm(boolean b) {
        AlarmManager alarmManager = (AlarmManager) getSystemService(ALARM_SERVICE);
        Intent intent1 = new Intent(this, MyReceiver.class);
        intent1.setAction("alarm");
        PendingIntent pendingIntent0 = PendingIntent.getBroadcast(this, 0, intent1, PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent pendingIntent1 = PendingIntent.getBroadcast(this, 1, intent1, PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent pendingIntent2 = PendingIntent.getBroadcast(this, 2, intent1, PendingIntent.FLAG_CANCEL_CURRENT);
        if (b) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(Calendar.HOUR_OF_DAY, 12);
            calendar.set(Calendar.MINUTE, 10);
            alarmManager.setInexactRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pendingIntent1);
            alarmManager.setInexactRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pendingIntent0);
            calendar.set(Calendar.HOUR_OF_DAY, 7);
            calendar.set(Calendar.MINUTE, 20);
            calendar.set(Calendar.HOUR_OF_DAY, 18);
            calendar.set(Calendar.MINUTE, 20);
            alarmManager.setInexactRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pendingIntent2);
            MyToast.showMessage(this, "提醒设置成功");
        } else {
            alarmManager.cancel(pendingIntent0);
            alarmManager.cancel(pendingIntent1);
            alarmManager.cancel(pendingIntent2);
            MyToast.showMessage(this, "提醒已取消");
        }


    }

    private void toMain() {
        Intent intent = new Intent(check_activity.this, MainActivity.class);
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
                if (isBiometricAvailable()) {
                    showBiometricPrompt();
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

    private void showBiometricPrompt() {
        BiometricPrompt.PromptInfo info = new BiometricPrompt.PromptInfo.Builder()
                .setTitle("亲，要指纹验证登录哦!")
                .setNegativeButtonText("取消")
                .build();
        BiometricPrompt biometricPrompt = new BiometricPrompt(this, executor, new BiometricPrompt.AuthenticationCallback() {
            @Override
            public void onAuthenticationError(int errorCode, @NonNull CharSequence errString) {
                super.onAuthenticationError(errorCode, errString);
                MyToast.showMessage(getApplicationContext(), "身份验证错误" + errString);
            }

            @Override
            public void onAuthenticationSucceeded(@NonNull BiometricPrompt.AuthenticationResult result) {
                super.onAuthenticationSucceeded(result);
                toMain();
            }

            @Override
            public void onAuthenticationFailed() {
                super.onAuthenticationFailed();
                MyToast.showMessage(getApplicationContext(), "身份验证失败");
            }
        });
        biometricPrompt.authenticate(info);
    }

    private boolean isBiometricAvailable() {
        BiometricManager biometricManager = BiometricManager.from(this);
        return biometricManager.canAuthenticate() == BiometricManager.BIOMETRIC_SUCCESS;
    }
}
