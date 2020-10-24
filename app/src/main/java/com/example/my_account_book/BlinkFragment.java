package com.example.my_account_book;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;

import com.example.my_account_book.bean.Date;
import com.example.my_account_book.databinding.FragmentBlinkBinding;

import org.litepal.LitePal;

import java.util.List;

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

    @Override
    public void onStart() {
        super.onStart();
        List<Date> dates = LitePal.where("date = ?",ContainerActivity.time).find(Date.class);
        if (dates.size() > 0 && fragmentBlinkBinding != null) {
            date = dates.get(0);
            Log.d(TAG, "onStart: " + dates.size() + "   "  + date.getWeatherOrder() + "  " + date.getStateOrder());
            fragmentBlinkBinding.tvDate.setText("日期：" + date.getDate());
            fragmentBlinkBinding.ivWeather.setImageResource(FacesSelectActivity.src_state[date.getWeatherOrder()]);
            fragmentBlinkBinding.ivMode.setImageResource(FacesSelectActivity.src_weather[date.getStateOrder()]);
            if(TextUtils.isEmpty(date.getContent())){
                fragmentBlinkBinding.etContent.setText(date.getContent());
            }
        }
    }

    public void start() {
        List<Date> dates = LitePal.where("date = ?", ContainerActivity.time).find(Date.class);
        Date date;
        if (dates.size() > 0)
            date = dates.get(0);
        else date = new Date();
        FacesSelectActivity.startActivity((ContainerActivity) getContext(), date);
    }
}
