package com.example.my_account_book.ui;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.my_account_book.R;
import com.example.my_account_book.bean.Date;
import com.example.my_account_book.databinding.FragmentBlinkBinding;
import com.example.my_account_book.widget.MyRecyclerAdapter;
import com.example.my_account_book.widget.MyToast;

import org.litepal.LitePal;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 樊晨阳1
 */
public class BlinkFragment extends Fragment {

    private Date date;
    private FragmentBlinkBinding fragmentBlinkBinding;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        fragmentBlinkBinding = DataBindingUtil.inflate(inflater, R.layout.fragment_blink, container, false);
        fragmentBlinkBinding.tvDate.setText("日期：" + ContainerActivity.time);
        fragmentBlinkBinding.setMFragment(this);
        return fragmentBlinkBinding.getRoot();
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(fragmentBlinkBinding.ivMode, "rotation", 0f, 360f);
        ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(fragmentBlinkBinding.ivWeather, "rotation", 0f, 360f);
        objectAnimator.setDuration(1000);
        objectAnimator1.setDuration(1000);
        objectAnimator.start();
        objectAnimator1.start();
        fragmentBlinkBinding.ivBack.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                addBackgroundPic();
                return true;
            }
        });
        fragmentBlinkBinding.ivBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });
    }


    private static final String TAG = "BlinkFragment";

    @Override
    public void onStart() {
        super.onStart();
        List<Date> dates = LitePal.where("date = ?", ContainerActivity.time).find(Date.class);
        if (dates.size() > 0 && fragmentBlinkBinding != null) {
            date = dates.get(0);
            Log.d(TAG, "onStart: " + dates.size() + "   " + date.getWeatherOrder() + "  " + date.getStateOrder());
            fragmentBlinkBinding.tvDate.setText("日期：" + date.getDate());
            fragmentBlinkBinding.ivWeather.setImageResource(FacesSelectActivity.src_state[date.getWeatherOrder()]);
            fragmentBlinkBinding.ivMode.setImageResource(FacesSelectActivity.src_weather[date.getStateOrder()]);
            LocalDateTime localDateTime = LocalDateTime.now();
            String today = localDateTime.toString().substring(0, 10);

            Log.d(TAG, "onStart: " + today + date.getDate());
            // 只有当天可以编辑
            if (today.equals(date.getDate())) {
                fragmentBlinkBinding.tvEditNote.setVisibility(View.VISIBLE);
                fragmentBlinkBinding.etContent.setEnabled(true);
                fragmentBlinkBinding.tvSave.setVisibility(View.VISIBLE);
            }

            Log.d(TAG, "onStart: content:" + date.getContent());
                fragmentBlinkBinding.etContent.setText(date.getContent());


            if (!TextUtils.isEmpty(date.getPicPath())) {
                Log.d(TAG, "onStart: " + date.getPicPath());
                String picUri = date.getPicPath();
                try {
                    setBackPic(Uri.parse(picUri));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }else if(fragmentBlinkBinding != null){
            fragmentBlinkBinding.etContent.setText("");
        }
    }

    /**
     * Blink点击事件
     */
    public void start() {
        List<Date> dates = LitePal.where("date = ?", ContainerActivity.time).find(Date.class);
        Date date;
        if (dates.size() > 0)
            date = dates.get(0);
        else date = new Date(ContainerActivity.time);
        FacesSelectActivity.startActivity((ContainerActivity) getContext(), date);
        getActivity().overridePendingTransition(R.anim.fragment_open_enter, R.anim.fragment_fade_exit);
    }

    /**
     * 保存按钮点击事件
     */
    public void saveTheNote() {
        date.setContent(fragmentBlinkBinding.etContent.getText().toString());
        date.save();
        MyToast.showMessage(getActivity(), "保存成功!");
    }

    public static final int GET_PIC = 11;

    /**
     * 编辑按钮点击事件
     */
    public void changeState() {
        if(fragmentBlinkBinding.etContent.isEnabled())
        MyToast.showMessage(getActivity(),"取消编辑(*^_^*)");
        else MyToast.showMessage(getActivity(),"开始编辑😀");
        fragmentBlinkBinding.etContent.setEnabled(!fragmentBlinkBinding.etContent.isEnabled());
    }

    /**
     * 添加背景图片按钮点击事件
     */
    public void addBackgroundPic() {
        if (!CheckActivity.checkPermission(getActivity())) {
            MyToast.showMessage(getContext(), "请在设置中添加权限后，再次点击使用该功能");
            return;
        }
        Intent intent = new Intent(Intent.ACTION_PICK);
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
        (getActivity()).startActivityForResult(intent, GET_PIC);
    }

    @RequiresApi(api = Build.VERSION_CODES.P)
    public void setBackPic(Uri uri) throws IOException {
        Log.d(TAG, "setBackPic: ");
        fragmentBlinkBinding.ivGuide.setVisibility(View.GONE);
        ImageDecoder.Source source = ImageDecoder.createSource(getContext().getContentResolver(), uri);
        Drawable drawable = ImageDecoder.decodeDrawable(source);
        fragmentBlinkBinding.ivBack.setBackground(drawable);
    }
}
