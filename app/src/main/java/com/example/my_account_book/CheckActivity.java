package com.example.my_account_book;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Switch;

import com.example.my_account_book.bean.Date;

import org.litepal.LitePal;

import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.List;

public class CheckActivity extends BaseActivity implements View.OnClickListener {
    private EditText mEditText;
    private Button mConfirm;
    private boolean isVisibility = false;
    private static final String TAG = "CheckActivity";
    private Switch prompting;
    private ImageView figure, guide_prompt, change_way;

    private boolean switch_boolean = false;

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SharedPreferences data = getSharedPreferences("data", MODE_PRIVATE);
        switch_boolean = data.getBoolean("switch", false);
//        Intent intent = new Intent();
//        intent.setAction(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
//        intent.setData(Uri.parse("package:"+getPackageName()));
//        startActivity(intent);
        setContentView(R.layout.activity_check_);
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
//        Log.d(TAG, "onCreate: "+getFilesDir().getAbsolutePath());
//        Log.d(TAG, "onCreate: "+getCacheDir().getAbsolutePath());
//        Log.d(TAG, "onCreate: "+getExternalCacheDir().getAbsolutePath());


        LocalDateTime dateTime = LocalDateTime.now();
        String string = dateTime.toString();
        String substring = string.substring(0, 10);
        Log.d(TAG, "onCreate: " + substring);
        List<Date> dates = LitePal.where("date = ?", substring).find(Date.class);
        if (dates.size() == 0){
            Date date = new Date();
            date.setDate(substring);
            date.save();
        }
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
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent1);
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
