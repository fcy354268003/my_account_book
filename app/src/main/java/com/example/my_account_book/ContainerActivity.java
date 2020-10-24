package com.example.my_account_book;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import com.google.android.material.bottomnavigation.BottomNavigationView;

/**
 * @author 樊晨阳1
 * 主页面的容器Activity
 */
public class ContainerActivity extends AppCompatActivity {
    private BottomNavigationView bottomNavigationView;
    private Fragment[] fragment = new Fragment[]{new summaryFragment(), new TodayFragment(),new BlinkFragment()};
    private Fragment currentFragment;
    public static String time;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_container);
        initController();
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

//    /**
//     *  设置沉浸式
//     * @param hasFocus 是否有焦点
//     */
//    @Override
//    public void onWindowFocusChanged(boolean hasFocus) {
//        super.onWindowFocusChanged(hasFocus);
//        if (hasFocus) {
//            View decorView = getWindow().getDecorView();
//            decorView.setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
//        }
//        getWindow().setStatusBarColor(Color.TRANSPARENT);
//    }

}
