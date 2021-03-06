package com.example.my_account_book.ui;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.MutableLiveData;


import android.content.Intent;

import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;


import com.example.my_account_book.LiveData.LiveDataManager;
import com.example.my_account_book.R;
import com.example.my_account_book.bean.Date;
import com.google.android.material.bottomnavigation.BottomNavigationView;


import org.litepal.LitePal;


import java.util.List;

/**
 * @author 樊晨阳1
 * 主页面的容器Activity
 */
public class ContainerActivity extends BaseActivity {
    private BottomNavigationView bottomNavigationView;
    public static Fragment[] fragment = new Fragment[]{new summaryFragment(), new TodayFragment(), new BlinkFragment()};
    private Fragment currentFragment;
    public static String time;
    private LiveDataManager manager;
    public final static String KEY = "container";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_container);
        initController();
        manager = LiveDataManager.getInstance();
        manager.with(KEY, Integer.class).postValue((int) getResources().getDimension(R.dimen.back_img_size));
        getSupportFragmentManager().beginTransaction().replace(R.id.content, fragment[1]).setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN).commit();
        currentFragment = fragment[1];
        bottomNavigationView.setSelectedItemId(R.id.today);

    }

    private void initController() {
        bottomNavigationView = findViewById(R.id.bottom_menu);
        bottomNavigationView.setOnNavigationItemSelectedListener(menuItem -> {
            switch (menuItem.getItemId()) {
                case R.id.summary:
                    currentFragment = fragment[0];
                    break;
                case R.id.today:
                    currentFragment = fragment[1];
                    break;
                case R.id.blink:
                    currentFragment = fragment[2];
                default:
            }
            getSupportFragmentManager().beginTransaction().replace(R.id.content, currentFragment).setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE).commit();
            return true;
        });
    }

    /**
     * 设置沉浸式
     *
     * @param hasFocus 是否有焦点
     */
    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus && this.currentFragment == fragment[2]) {
            View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN);
            getWindow().setStatusBarColor(Color.TRANSPARENT);
        }

    }

    private static final String TAG = "ContainerActivity";

    @RequiresApi(api = Build.VERSION_CODES.P)
    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.d(TAG, "onActivityResult: " + requestCode);
        if (requestCode == BlinkFragment.GET_PIC) {
            Uri picUri;
            if (data != null && (picUri = data.getData()) != null) {
                List<Date> dates = LitePal.where("date = ?", ContainerActivity.time).find(Date.class);
                Date date;
                if (dates.size() == 0) {
                    date = new Date(ContainerActivity.time);
                } else date = dates.get(0);
                date.setPicPath("content://" + picUri.getAuthority() + picUri.getPath());
                date.saveOrUpdate("date = ?", ContainerActivity.time);
            }
        }
    }

    @Override
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.addCategory(Intent.CATEGORY_HOME);
        intent.setAction(Intent.ACTION_MAIN);
        startActivity(intent);
    }


}