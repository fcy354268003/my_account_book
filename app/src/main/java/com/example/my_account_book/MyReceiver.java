package com.example.my_account_book;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;


import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;


import java.util.Calendar;

import static android.content.Context.ALARM_SERVICE;

public class MyReceiver extends BroadcastReceiver {

    private static final String TAG = "MyReceiver";

    @Override
    public void onReceive(Context context, Intent intent) {
        Log.d(TAG, "onReceive: " + "收到广播！！！！！！！！！！！！！！！！！！");
        createNotificationChannel(context);
        createAndUseNotification(context);
        SharedPreferences data = context.getSharedPreferences("data", Context.MODE_PRIVATE);
        if (data.getBoolean("switch", false)) {
            int flag = intent.getIntExtra("flag", 10);
            setAlarm(context, flag);
        }
    }

    public void createAndUseNotification(Context context) {
        Intent intent = new Intent(context, check_activity.class);
        intent.putExtra("channel", "notification");
        TaskStackBuilder builder1 = TaskStackBuilder.create(context);
        builder1.addNextIntent(intent);
        PendingIntent pendingIntent = builder1.getPendingIntent(0, PendingIntent.FLAG_UPDATE_CURRENT);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, CHANNEL_ID);
        builder.setSmallIcon(R.drawable.account) // 必填
                .setContentText("亲，到了填写消费金额的时间了")
                .setPriority(NotificationCompat.PRIORITY_DEFAULT)
                .setContentIntent(pendingIntent)
                .setAutoCancel(true);
        Notification notification = builder.build();
        NotificationManagerCompat managerCompat = NotificationManagerCompat.from(context);
        managerCompat.notify(1, notification);
    }

    private static final String CHANNEL_ID = "check_activity";

    // 必须在通知前 调用该方法 否则 被系统 刷掉
    public void createNotificationChannel(Context context) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            CharSequence name = "channel_name";
            String description = "channel_description";
            int importance = NotificationManager.IMPORTANCE_HIGH;
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, name, importance);
            channel.setDescription(description);
            // Register the channel with the system; you can't change the importance
            // or other notification behaviors after this
            NotificationManager notificationManager = context.getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(channel);
        }
    }

    private void setAlarm(Context context, final int FLAG) {
        if (FLAG == 2) {
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(ALARM_SERVICE);
            Intent intent0 = new Intent(context, MyReceiver.class);
            intent0.putExtra("flag", 0);
            Intent intent1 = new Intent(context, MyReceiver.class);
            intent1.putExtra("flag", 1);
            Intent intent2 = new Intent(context, MyReceiver.class);
            intent2.putExtra("flag", 2);
            intent1.setAction("alarm");
            intent0.setAction("alarm");
            intent2.setAction("alarm");
            PendingIntent pendingIntent0 = PendingIntent.getBroadcast(context, 0, intent0, PendingIntent.FLAG_UPDATE_CURRENT);
            PendingIntent pendingIntent1 = PendingIntent.getBroadcast(context, 1, intent1, PendingIntent.FLAG_UPDATE_CURRENT);
            PendingIntent pendingIntent2 = PendingIntent.getBroadcast(context, 2, intent2, PendingIntent.FLAG_UPDATE_CURRENT);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.add(Calendar.DAY_OF_MONTH, 1);
            calendar.set(Calendar.HOUR_OF_DAY, 12);
            calendar.set(Calendar.MINUTE, 40);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent1);
            calendar.set(Calendar.HOUR_OF_DAY, 7);
            calendar.set(Calendar.MINUTE, 20);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent0);
            calendar.set(Calendar.HOUR_OF_DAY, 18);
            calendar.set(Calendar.MINUTE, 20);
            alarmManager.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pendingIntent2);
            MyToast.showMessage(context, "提醒设置成功");
        }
    }

}
