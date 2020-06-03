package com.example.my_account_book;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.header.BezierRadarHeader;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;

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
    private EditText extra_cost11;
    private RefreshLayout refreshLayout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        refreshLayout = findViewById(R.id.refreshLayout);
        refreshLayout.setOnRefreshListener(new OnRefreshListener() {
            @Override
            public void onRefresh(@NonNull RefreshLayout refreshLayout) {
                init();
                refreshLayout.finishRefresh(1000);
                MyToast.showMessage(MainActivity.this,"刷新成功");
            }
        });
        refreshLayout.setRefreshHeader(new BezierRadarHeader(this).setEnableHorizontalDrag(true));
        extra_cost11 = findViewById(R.id.extra_cost1);
        change = findViewById(R.id.change_date);
        change.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, date_select.class);
                intent.putExtra("time", time);
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
        extra_cost11.setText(today.getExtra_cost() + "");
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
                extra_cost11.setEnabled(!enabled);
                extra_cost_description.setEnabled(!enabled);
                if (enabled) {
                    MyToast.showMessage(this, "取消编辑");
                } else {
                    MyToast.showMessage(this, "开始编辑");
                }
                enabled = !enabled;
                break;
            case R.id.save:
                mDrink.setEnabled(false);
                mBreakfast.setEnabled(false);
                mLaunch.setEnabled(false);
                mDinner.setEnabled(false);
                extra_cost11.setEnabled(false);
                extra_cost_description.setEnabled(false);
                int breakfast = 0, launch = 0, dinner = 0, drink = 0, total = 0, extral_cost = 0;
                if (!TextUtils.isEmpty(mBreakfast.getText().toString()))
                    breakfast = Integer.valueOf(mBreakfast.getText().toString());
                if (!TextUtils.isEmpty(mLaunch.getText().toString()))
                    launch = Integer.valueOf(mLaunch.getText().toString());
                if (!TextUtils.isEmpty(mDinner.getText().toString()))
                    dinner = Integer.valueOf(mDinner.getText().toString());
                if (!TextUtils.isEmpty(mDrink.getText().toString()))
                    drink = Integer.valueOf(mDrink.getText().toString());
                if (!TextUtils.isEmpty(extra_cost11.getText().toString()))
                    extral_cost = Integer.valueOf(extra_cost11.getText().toString());
                    total = breakfast + dinner + drink + launch + extral_cost;
                today.setBreakfast_cost(breakfast);
                today.setLunch_cost(launch);
                today.setExtra_cost(extral_cost);
                today.setTotal(total);
                today.setDinner_cost(dinner);
                today.setDrink(drink);
                today.setExtra_cost_description(extra_cost_description.getText().toString());
                today.save();
                MyToast.showMessage(this, "保存成功");
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
