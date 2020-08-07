package com.example.my_account_book;

import androidx.appcompat.app.AppCompatActivity;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;

public class BaseActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_base);
        initFontSize();
    }

    private void initFontSize() {
        // 拿到系统当前配置  如果是new出来的各项配置 会是 类构造方法里 默认设定的  如果用new出来的修改状态
        //可能会把用户的其他设置 也同时给修改  也就是说getResources().getConfiguration() 直接拿到用户的默认设置
        // 然后修改 自己想修改的内容  其他内容还是用户自定义的
        Configuration configuration = getResources().getConfiguration();
        configuration.fontScale = (float) 0.85;
        //0.85 小, 1 标准大小, 1.15 大，1.3 超大 ，1.45 特大
        DisplayMetrics metrics = new DisplayMetrics();
        // 将当前窗口的配置信息放在 new 出来的 metrics 中
        getWindowManager().getDefaultDisplay().getMetrics(metrics);
        // metrics.density  像素密度/160
        metrics.scaledDensity = configuration.fontScale * metrics.density;
        getBaseContext().getResources().updateConfiguration(configuration, metrics);
    }
}
