package com.example.my_account_book;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.FrameLayout;

import com.google.android.material.bottomnavigation.BottomNavigationView;

public class ContainerActivity extends AppCompatActivity {
    private BottomNavigationView bottomNavigationView;
    private Fragment[] fragment = new Fragment[]{new summaryFragment(), new TodayFragment(), new mineFragment(),};
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
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId()) {
                    case R.id.summary:
                        currentFragment = fragment[0];
                        break;
                    case R.id.today:
                        currentFragment = fragment[1];
                        break;
                    case R.id.mine:
                        currentFragment = fragment[2];
                        break;
                }
                getSupportFragmentManager().beginTransaction().replace(R.id.content, currentFragment).setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE).commit();
                return true;
            }
        });
    }


}
