package com.example.my_account_book;


import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import org.litepal.LitePal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


/**
 * A simple {@link Fragment} subclass.
 */
public class summaryFragment extends Fragment implements View.OnClickListener {

    public summaryFragment() {
        // Required empty public constructor
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        initData();
        mActivity = (Activity) context;
    }

    private String start, end;
    private TextView start_date, end_date;
    private Activity mActivity;
    private List<Integer> images = new ArrayList<>();
    private List<String> types = new ArrayList<>();
    private List<String> costs = new ArrayList<>();
    private RecyclerView recyclerView;
    MyRecycleAdapter myRecycleAdapter;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_summary, container, false);
        view.getBackground().setAlpha(100);
        recyclerView = view.findViewById(R.id.cost_list);
        start_date = view.findViewById(R.id.start_date);
        end_date = view.findViewById(R.id.end_date);
        start_date.setOnClickListener(this);
        end_date.setOnClickListener(this);
        if (!TextUtils.isEmpty(end) && !TextUtils.isEmpty(start)) {
            end_date.setText(end);
            start_date.setText(start);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(mActivity);
        recyclerView.setLayoutManager(linearLayoutManager);
        myRecycleAdapter = new MyRecycleAdapter(images, types, costs);
        recyclerView.setAdapter(myRecycleAdapter);
        resolveCost();
        return view;
    }

    private void resolveCost() {
        if (!TextUtils.isEmpty(start) && !TextUtils.isEmpty(end) && start.compareTo(end) <= 0) {
            List<com.example.my_account_book.Date> dates1 = LitePal.where("date >= ? ", start).find(com.example.my_account_book.Date.class);
            List<com.example.my_account_book.Date> dates2 = LitePal.where("date <= ?", end).find(com.example.my_account_book.Date.class);
            List<com.example.my_account_book.Date> dateList = new ArrayList<>();
            for (com.example.my_account_book.Date date : dates1) {
                for (com.example.my_account_book.Date date1 : dates2) {
                    if (date.equals(date1)) {
                        dateList.add(date);
                    }
                }
            }
            double drink = 0, breakfast = 0, lunch = 0, dinner = 0, others = 0,total = 0 ;
            for (com.example.my_account_book.Date date : dateList) {
                    drink += date.getDrink();
                    breakfast += date.getBreakfast_cost();
                    dinner += date.getDinner_cost();
                    lunch += date.getLunch_cost();
                    total += date.getTotal();
            }
            others = total - drink - breakfast - lunch - dinner;
            costs.set(0,"花费："+breakfast);
            costs.set(1,"花费："+lunch);
            costs.set(2,"花费："+dinner);
            costs.set(3,"花费："+drink);
            costs.set(4,"花费："+others);
            costs.set(5,"花费："+ total);
            myRecycleAdapter.notifyDataSetChanged();
        }

    }

    private void initData() {
        images.add(R.drawable.bre);
        images.add(R.drawable.lun);
        images.add(R.drawable.din);
        images.add(R.drawable.dri);
        images.add(R.drawable.oth);
        images.add(R.drawable.otot);
        for (int i = 0; i < 6; i++) {
            costs.add("花费：");
        }
        types.add("早餐");
        types.add("午餐");
        types.add("晚餐");
        types.add("饮料费");
        types.add("其他");
        types.add("总共");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        images.clear();
        types.clear();
        costs.clear();
    }

    @Override
    public void onClick(View v) {
        int request = 0;
        switch (v.getId()) {
            case R.id.start_date:
                request = 22;
                break;
            case R.id.end_date:
                request = 23;
                break;
        }
        Intent intent = new Intent(mActivity, date_select.class);
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-M-d");
        String format = simpleDateFormat.format(date);
        intent.putExtra("time", format);
        startActivityForResult(intent, request);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if ((requestCode == 23 || requestCode == 22) && resultCode == 1) {
            Bundle bundle = data.getBundleExtra("bundle");
            String newTime = bundle.getInt("year") + "-" + bundle.getInt("month") + "-" + bundle.getInt("day");
            if (requestCode == 22) {
                start_date.setText(newTime);
                start = newTime;
                resolveCost();
            } else {
                end_date.setText(newTime);
                end = newTime;
                resolveCost();
            }
        }
    }
}
