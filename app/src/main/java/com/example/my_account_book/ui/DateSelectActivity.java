package com.example.my_account_book.ui;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.Spinner;

import com.example.my_account_book.widget.MyAdapter;
import com.example.my_account_book.R;

import java.util.ArrayList;
import java.util.List;

public class DateSelectActivity extends BaseActivity {
    private Spinner year, month, day;
    private List<String> years = new ArrayList<>();
    private List<String> months = new ArrayList<>();
    private List<String> days = new ArrayList<>();
    private Button mConfirm;
    private List<Integer> time = new ArrayList<>();
    private static final String TAG = "DateSelectActivity";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_date_select);
        String stringExtra = getIntent().getStringExtra("time");
        String[] split = stringExtra.split("-");
        year = findViewById(R.id.year);
        month = findViewById(R.id.month);
        day = findViewById(R.id.day);
        mConfirm = findViewById(R.id.confirm);
        for (int i = 2020; i < 2024; i++) {
            years.add(i + "年");
        }
        for (int i = 1; i < 13; i++) {
            months.add(i + "月");
        }
        for (int i = 1; i < 32; i++) {
            days.add(i + "日");
        }
        mConfirm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.d(TAG, "onClick: " + time);
                Bundle bundle = new Bundle();
                bundle.putInt("year", time.get(0));
                bundle.putInt("month", time.get(1));
                bundle.putInt("day", time.get(2));
                Intent i = new Intent();
                i.putExtra("bundle", bundle);
                setResult(1, i);
                finish();
            }
        });
        time.add(0);
        time.add(0);
        time.add(0);
        year.setAdapter(new MyAdapter(this, years));
        month.setAdapter(new MyAdapter(this, months));
        day.setAdapter(new MyAdapter(this, days));
        year.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                time.set(0, position + 2020);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        month.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                time.set(1, position + 1);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        day.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                time.set(2, position + 1);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        ArrayList<Integer> integers = new ArrayList<>();
        for (String s : split) {
            int x = Integer.valueOf(s);
            integers.add(x);
        }
        for (int i = 0; i < 3; i++) {
            switch (i) {
                case 0:
                    year.setSelection(integers.get(0) - 2020);
                    break;
                case 1:
                    month.setSelection(integers.get(1) - 1);
                    break;
                case 2:
                    day.setSelection(integers.get(2) - 1);
                    break;
                default:
            }
        }

    }
}
