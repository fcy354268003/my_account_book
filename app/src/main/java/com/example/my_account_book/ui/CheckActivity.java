package com.example.my_account_book.ui;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Switch;

import com.example.my_account_book.bean.Item;
import com.example.my_account_book.util.Biometric_tool;
import com.example.my_account_book.util.MyReceiver;
import com.example.my_account_book.widget.MyToast;
import com.example.my_account_book.R;
import com.example.my_account_book.bean.Date;

import org.litepal.LitePal;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class CheckActivity extends BaseActivity implements View.OnClickListener {
    private EditText mEditText;
    private Button mConfirm;
    private boolean isVisibility = false;
    private static final String TAG = "CheckActivity";
    private Switch prompting;
    private ImageView figure, guide_prompt;

    private boolean switch_boolean = false;

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SharedPreferences data = getSharedPreferences("data", MODE_PRIVATE);
        switch_boolean = data.getBoolean("switch", false);

        setContentView(R.layout.activity_check_);

        guide_prompt = findViewById(R.id.guide_promptinf);
        mEditText = findViewById(R.id.use_name);
        mConfirm = findViewById(R.id.confirm);
        figure = findViewById(R.id.figure);
        prompting = findViewById(R.id.radio_btn);
        prompting.setOnClickListener(this);
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

        LocalDateTime dateTime = LocalDateTime.now();
        String string = dateTime.toString();
        Log.d(TAG, "onCreate: " + dateTime);
        String substring = string.substring(0, 10);
        Log.d(TAG, "onCreate: " + substring);
        List<Date> dates = LitePal.where("date = ?", substring).find(Date.class);
        if (dates.size() == 0) {
            Date date = new Date(substring);
            date.save();
        }

        startAnimation();
    }

    private void initAlarm(boolean b) {
        AlarmManager alarmManager = (AlarmManager) getSystemService(ALARM_SERVICE);
        Intent intent0 = new Intent(this, MyReceiver.class);
        intent0.putExtra("flag", 0);
        Intent intent1 = new Intent(this, MyReceiver.class);
        intent1.putExtra("flag", 1);
        Intent intent2 = new Intent(this, MyReceiver.class);
        intent2.putExtra("flag", 2);
        intent1.setAction("alarm");
        intent2.setAction("alarm");
        intent0.setAction("alarm");
        intent0.setFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
        intent1.setFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
        intent2.setFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
        PendingIntent pendingIntent0 = PendingIntent.getBroadcast(this, 0, intent0, PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent pendingIntent1 = PendingIntent.getBroadcast(this, 1, intent1, PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent pendingIntent2 = PendingIntent.getBroadcast(this, 2, intent2, PendingIntent.FLAG_UPDATE_CURRENT);

        if (b) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(Calendar.HOUR_OF_DAY, 12);
            calendar.set(Calendar.MINUTE, 40);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent1);
            calendar.set(Calendar.HOUR_OF_DAY, 7);
            calendar.set(Calendar.MINUTE, 20);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent0);
            calendar.set(Calendar.HOUR_OF_DAY, 13);
            calendar.set(Calendar.MINUTE, 25);
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
        Intent intent = new Intent(CheckActivity.this, ContainerActivity.class);
        startActivity(intent);
        finish();
        MyToast.showMessage(CheckActivity.this, "登陆成功");
    }


    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.confirm:
                final String uri = mEditText.getText().toString();
                final SharedPreferences user = getSharedPreferences("user", MODE_PRIVATE);
                boolean isFirst = user.getBoolean("isFirst", true);

                if (isFirst) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CheckActivity.this);
                    builder.setCancelable(false);
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
                            MyToast.showMessage(CheckActivity.this, "取消成功");
                        }
                    });
                    AlertDialog show = builder.show();
                    show.setIcon(R.drawable.warning);
                    show.show();
                } else if (uri.equals(user.getString("uri", "#########"))) {
                    toMain();
                } else MyToast.showMessage(CheckActivity.this, "登陆失败");
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
            case R.id.fab_add:

                break;
        }
    }


    public static final int PERMISSION = 111;

    /**
     * 检查是否有权限 设置图片
     *
     * @param context context
     * @return true:有权限
     */
    public static boolean checkPermission(Activity context) {
        int i = ActivityCompat.checkSelfPermission(context, Manifest.permission.READ_EXTERNAL_STORAGE);
        if (i != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(context, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, CheckActivity.PERMISSION);
            return false;
        }
        return true;
    }

    public void startAnimation() {
        ObjectAnimator rotation = ObjectAnimator.ofFloat(mConfirm, "rotation", 0, 360).setDuration(1000);
        ObjectAnimator scaleX = ObjectAnimator.ofFloat(mConfirm, "scaleX", 0, 1).setDuration(1000);
        ObjectAnimator scaleY = ObjectAnimator.ofFloat(mConfirm, "scaleY", 0, 1).setDuration(1000);
        ObjectAnimator alpha = ObjectAnimator.ofFloat(mConfirm, "alpha", 0, 1).setDuration(1000);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(rotation).with(scaleX).with(scaleY).with(alpha);
        animatorSet.start();
    }
}

