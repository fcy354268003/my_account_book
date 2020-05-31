package com.example.my_account_book;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.litepal.LitePal;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    private boolean enabled = false;
    private java.util.Date date;
    private TextView mTextView;
    private String time;
    private TextView change;
    private static final String TAG = "MainActivity";
    private com.example.my_account_book.Date today;
    private EditText mBreakfast, mLaunch, mDinner, mDrink, extra_cost_description;
    private TextView total;
    private Button bSave, bEdit;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        change = findViewById(R.id.change_date);
        change.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, date_select.class);
                intent.putExtra("time",time);
                startActivityForResult(intent, 1);
            }
        });
        extra_cost_description = findViewById(R.id.extra_cost);
        mDrink = findViewById(R.id.drink_cost);
        bSave = findViewById(R.id.save);
        bEdit = findViewById(R.id.edit);
        total = findViewById(R.id.total_cost);
        mBreakfast = findViewById(R.id.breakfast);
        mLaunch = findViewById(R.id.launch);
        mDinner = findViewById(R.id.dinner);
        mTextView = findViewById(R.id.today);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-M-d");
        date = new Date();
        time = format.format(this.date);
        mTextView.setText(time);
        Log.d(TAG, "onCreate: " + time);
        init();
        bSave.setOnClickListener(this);
        bEdit.setOnClickListener(this);
    }

    private void init() {
        List<com.example.my_account_book.Date> dates = LitePal.where("date = ?", time).find(com.example.my_account_book.Date.class);
        if (!dates.isEmpty()) {
            today = dates.get(0);
        } else {
            today = new com.example.my_account_book.Date();
            today.setDate(time);
        }
        mBreakfast.setText(today.getBreakfast_cost() + "");
        mLaunch.setText(today.getLunch_cost() + "");
        mDinner.setText(today.getDinner_cost() + "");
        total.setText("总共花费：" + today.getTotal());
        mDrink.setText(today.getDrink() + "");
        extra_cost_description.setText(today.getExtra_cost_description());

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.edit:
                mDrink.setEnabled(!enabled);
                mBreakfast.setEnabled(!enabled);
                mLaunch.setEnabled(!enabled);
                mDinner.setEnabled(!enabled);
                extra_cost_description.setEnabled(!enabled);
                if(enabled){
//                    Toast.makeText(this, "取消编辑", Toast.LENGTH_SHORT).show();
                    MyToast.showMessage(this,"取消编辑");
                }else {
//                    Toast.makeText(this, "开始编辑", Toast.LENGTH_SHORT).show();
                    MyToast.showMessage(this,"开始编辑");
                }
                enabled = !enabled;
                break;
            case R.id.save:
                mDrink.setEnabled(false);
                mBreakfast.setEnabled(false);
                mLaunch.setEnabled(false);
                mDinner.setEnabled(false);
                extra_cost_description.setEnabled(false);
                int breakfast = 0, launch = 0, dinner = 0, drink = 0, total = 0;
                if (!TextUtils.isEmpty(mBreakfast.getText().toString()))
                    breakfast = Integer.valueOf(mBreakfast.getText().toString());
                if (!TextUtils.isEmpty(mLaunch.getText().toString()))
                    launch = Integer.valueOf(mLaunch.getText().toString());
                if (!TextUtils.isEmpty(mDinner.getText().toString()))
                    dinner = Integer.valueOf(mDinner.getText().toString());
                if (!TextUtils.isEmpty(mDrink.getText().toString()))
                    drink = Integer.valueOf(mDrink.getText().toString());
                total = breakfast + dinner + drink + launch;
                today.setBreakfast_cost(breakfast);
                today.setLunch_cost(launch);
                today.setTotal(total);
                today.setDinner_cost(dinner);
                today.setExtra_cost_description(extra_cost_description.getText().toString());
                today.save();
//                Toast.makeText(this, "保存成功", Toast.LENGTH_SHORT).show();
                MyToast.showMessage(this,"保存成功");
                break;
            default:
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1 && resultCode == 1) {
            Bundle bundle = data.getBundleExtra("bundle");
            String newTime = bundle.getInt("year") + "-" + bundle.getInt("month") + "-" + bundle.getInt("day");
            time = newTime;
            mTextView.setText(time);
            init();
        }
    }
}
