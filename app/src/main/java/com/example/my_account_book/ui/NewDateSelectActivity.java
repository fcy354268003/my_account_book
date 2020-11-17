package com.example.my_account_book.ui;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.CalendarView;

import com.example.my_account_book.R;

public class NewDateSelectActivity extends AppCompatActivity {

    private CalendarView calendarView;
    private int mYear;
    private int mMonth;
    private int mDay;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new_date_select);
        calendarView = findViewById(R.id.calendarView);
        calendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() {
            @Override
            public void onSelectedDayChange(@NonNull CalendarView view, int year, int month, int dayOfMonth) {
                Log.d(TAG, "onSelectedDayChange: " + year + "\n" + month + "\n" + dayOfMonth);
                mYear = year;
                mMonth = month + 1;
                mDay = dayOfMonth;
            }
        });


    }

    /**
     * @param v 确认
     */
    public void onConfirm(View v) {
        Log.d(TAG, "onCancel: " + mYear + "\n" + mMonth + "\n" + mDay);
        String date = String.valueOf(mYear);
        date += "-";
        if(!date.equals("0-")){
            if(mMonth < 10)
                date += "0" + mMonth;
            else
                date += + mMonth;
            date += "-";
            if(mDay < 10)
                date += "0" + mDay;
            else
                date += mDay;
        }
        Intent intent = new Intent();
        intent.putExtra("date",date);
        setResult(1,intent);
        finish();
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit);
    }

    private static final String TAG = "NewDateSelectActivity";

    /**
     * @param v 取消
     */
    public void onCancel(View v) {
        Log.d(TAG, "onCancel: ");
        Intent intent = new Intent();
        setResult(1);
        finish();
    }

}