package com.example.my_account_book;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
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

import com.example.my_account_book.bean.Date;
import com.example.my_account_book.databinding.FragmentBlinkBinding;

import org.litepal.LitePal;

import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
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
    }

    private static final String TAG = "BlinkFragment";

    @RequiresApi(api = Build.VERSION_CODES.P)
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

            // 只有当天可以编辑
            if (today.equals(date.getDate())) {
                Log.d(TAG, "onStart: ");
                fragmentBlinkBinding.tvEditNote.setVisibility(View.VISIBLE);
                fragmentBlinkBinding.etContent.setEnabled(true);
                fragmentBlinkBinding.tvSave.setVisibility(View.VISIBLE);
            }
            if (TextUtils.isEmpty(date.getContent())) {
                fragmentBlinkBinding.etContent.setText(date.getContent());
            }
            if (!TextUtils.isEmpty(date.getPicPath())) {
                Log.d(TAG, "onStart: " + date.getPicPath());
                String picUri = date.getPicPath();
                try {
                    setBackPic(Uri.parse(picUri));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

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
    }

    /**
     * 保存按钮点击事件
     */
    public void saveTheNote() {
        date.setContent(fragmentBlinkBinding.etContent.getText().toString());
        date.save();
    }

    public static final int GET_PIC = 11;

    /**
     * 编辑按钮点击事件
     */
    public void changeState() {
        fragmentBlinkBinding.tvEditNote.setEnabled(true);
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
        fragmentBlinkBinding.rlBackPic.setBackground(drawable);
    }
}
