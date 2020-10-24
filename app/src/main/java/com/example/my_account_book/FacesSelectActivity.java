package com.example.my_account_book;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.my_account_book.bean.Date;

import org.litepal.LitePal;

import java.util.List;

public class FacesSelectActivity extends AppCompatActivity {
    private static Date date;
    // 心情图片资源资源
    public static final int[] src_state = new int[]{R.drawable.ic_fb_mood_happy, R.drawable.ic_fb_mood_angry, R.drawable.ic_fb_mood_cool, R.drawable.ic_fb_mood_sad, R.drawable.ic_fb_mood_wondering};
    // 天气图片资源
    public static final int[] src_weather = new int[]{R.drawable.ic_fb_weather_sun_o, R.drawable.ic_fb_weather_cloudy_o, R.drawable.ic_fb_weather_lightning_o, R.drawable.ic_fb_weather_rainy_o, R.drawable.ic_fb_weather_snowy_o};

    public static final int RESULT_CODE = 11;
    public static final int REQUEST_CODE = 10;

    public int stateOrder;
    public int weatherOrder;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // 初始化失败就直接返回
        if (!initArgs(getIntent())) {
            // 未选择 返回 -1
            finish();
        }
        setContentView(R.layout.activity_face_select);
    }

    private void onCancel() {
        finish();
    }

    private static final String TAG = "FacesSelectActivity";

    private void onFinish() {
        Log.d(TAG, "onFinish: " + weatherOrder + stateOrder);
        date.setWeatherOrder(weatherOrder);
        date.setStateOrder(stateOrder);
        date.saveOrUpdate("date = ?", ContainerActivity.time);
        finish();
    }

    @Override
    public void onContentChanged() {
        super.onContentChanged();

        // 初始化心情选择列表
        Adapter adapter = new Adapter(src_state) {
            @Override
            public int getItemViewType(int position) {
                return 0;
            }
        };
        RecyclerView recyclerView = findViewById(R.id.rv_stateContent);
        GridLayoutManager manager = new GridLayoutManager(this, 5);
        recyclerView.setLayoutManager(manager);
        recyclerView.setAdapter(adapter);

        // 初始化天气选择列表
        Adapter adapter1 = new Adapter(src_weather) {
            @Override
            public int getItemViewType(int position) {
                return 1;
            }
        };
        RecyclerView recyclerView1 = findViewById(R.id.rv_weatherContent);
        GridLayoutManager manager1 = new GridLayoutManager(this, 5);
        recyclerView1.setLayoutManager(manager1);
        recyclerView1.setAdapter(adapter1);

        TextView textView = findViewById(R.id.tv_confirm);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onFinish();
            }
        });
        ImageView imageView = findViewById(R.id.iv_cancel);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onCancel();
            }
        });

    }

    /**
     * 从外界启动此Activity
     *
     * @param activity 哪个Activity启动的
     * @param date     数据
     */
    public static void startActivity(AppCompatActivity activity, Date date) {
        Intent intent = new Intent(activity, FacesSelectActivity.class);
        FacesSelectActivity.date = date;
        activity.startActivityForResult(intent, REQUEST_CODE);
    }

    /**
     * 初始化bundle中的数据
     *
     * @param intent 参数
     * @return true 如果数据初始化成功
     */
    private boolean initArgs(Intent intent) {
        stateOrder = date.getStateOrder();
        weatherOrder = date.getWeatherOrder();
        return true;
    }

    private class Adapter extends RecyclerView.Adapter<Adapter.Holder> {
        private final int[] src;
        private View curSel;

        public Adapter(int[] src) {
            this.src = src;
        }

        @NonNull
        @Override
        public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recycler, parent, false);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(@NonNull Holder holder, int position) {
            View view = holder.itemView;
            ImageView imageView = view.findViewById(R.id.iv_content);
            imageView.setImageResource(src[position]);
            System.out.println(src[position]);
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (curSel != null)
                        curSel.setBackgroundColor(FacesSelectActivity.this.getColor(R.color.colorGrey));
                    curSel = v;
                    v.setBackgroundColor(FacesSelectActivity.this.getColor(R.color.colorWhite));
                    int type = getItemViewType(position);
                    if (type == 0)
                        stateOrder = position;
                    else weatherOrder = position;
                }
            });
        }


        @Override
        public int getItemCount() {
            return src.length;
        }

        public class Holder extends RecyclerView.ViewHolder {

            public Holder(@NonNull View itemView) {
                super(itemView);
            }
        }
    }

    @Override
    public void onBackPressed() {
    }
}
