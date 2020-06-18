package com.example.my_account_book;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.FrameLayout;

import com.google.android.material.bottomnavigation.BottomNavigationView;

public class ContainerActivity extends AppCompatActivity {
    private BottomNavigationView bottomNavigationView;
    private Fragment fragment[] = new Fragment[]{new summaryFragment(), new TodayFragment(), new mineFragment(),};
    private Fragment currentFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_container);
        getSupportFragmentManager().beginTransaction().replace(R.id.content, fragment[1]).commit();
        initController();
    }

    private void initController() {
        bottomNavigationView = findViewById(R.id.bottom_menu);
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId()){
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
                getSupportFragmentManager().beginTransaction().replace(R.id.content, currentFragment).commit();
                return true;
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1 && resultCode == 1) {
            Bundle bundle = data.getBundleExtra("bundle");
            if (bundle != null && currentFragment == fragment[1]) {
                TodayFragment todayFragment = (TodayFragment) currentFragment;
                todayFragment.changeTime(bundle);
            }
        }
    }
}
