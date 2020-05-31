package com.example.my_account_book;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.SimpleAdapter;
import android.widget.Spinner;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class date_select extends AppCompatActivity {
    private Spinner year, month, day;
    private List<Integer> years = new ArrayList<>();
    private List<Integer> months = new ArrayList<>();
    private List<Integer> days = new ArrayList<>();
    private Button mConfirm;
    private List<Integer> time = new ArrayList<>();
    private static final String TAG = "date_select";

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
            years.add(i);
        }
        for (int i = 1; i < 13; i++) {
            months.add(i);
        }
        for (int i = 1; i < 32; i++) {
            days.add(i);
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
        year.setAdapter(new ArrayAdapter<Integer>(this, android.R.layout.simple_spinner_item, years));
        month.setAdapter(new ArrayAdapter<Integer>(this, android.R.layout.simple_spinner_item, months));
        day.setAdapter(new ArrayAdapter<Integer>(this, android.R.layout.simple_spinner_item, days));
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
                    year.setSelection(integers.get(0) - 2020 );
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
